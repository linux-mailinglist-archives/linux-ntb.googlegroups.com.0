Return-Path: <linux-ntb+bncBCFYTA5O7QNRBIMW5H4QKGQEKFS2BFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id B1755246266
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:17:22 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id y13sf3511778uan.14
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:17:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655841; cv=pass;
        d=google.com; s=arc-20160816;
        b=SBQ5r8XiRXCpOquNP4r8vezKJINU9wMiIQHrI5x6Rx7urWDT/FLwIgzOkMSjxRX79I
         fnb66FSXB+2tMEDooPotg55gIRf74ma3kUPicquRlG8gRJi8JojUXRFsjs7xC2tsr/d/
         OqUit513tTFg/gUnHZ3Y1HCVxzNoUeMR00mYDMoEsMCQCXVsHm0Kj/MLU0cS05RcEqIs
         7GaWeKCZCG9J6HJ2RvzjduWuDRdjWHamlCaU5nqRs6VthcnuuaO/lSWuwJ8mzU+ky7hX
         KV9DIFIzSqPTe5U3Y8hS4BGSyR+9lqqDhsqBc3CDbM4VTkyJauHtjIsdMg6v00QkyGdw
         5puA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GXIRMsqhs9bB/wAYPu6m5UOMDYC5Y6ZrR7jZ1GiD+04=;
        b=kG7rNWB1FnENozgxqxafLmBqccb5L+0/ng8AmcB5YIZwCsCauU8IYBtqWuCHOpYBef
         nZ2srzg4v2dLpWxCtXJC2fnHf89tcffAPp7LRsD0ej9wCjYyXKDGFn3W+7stKpM2hf89
         7HZ5IURYZ8aFwwuBp8ydyhD8TPmVm4ANSW4luRHFFC5ByVdRXYpDn0n709KmOcCBH9g+
         olHX4BQrSYWDFtQAnII6c3sGpYjVOltQMUQctFo1EgpU/bFmN66rFhKnRh+Gws2smBkp
         NIxssffcKqxZspH7EdebvtwSSkPEXocMxc+PBGKCAzxCsl3D8UqP0gca7Gouy33y2Nuo
         HJ9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sp0LSuWI;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GXIRMsqhs9bB/wAYPu6m5UOMDYC5Y6ZrR7jZ1GiD+04=;
        b=QDiNNXqJS17aY0j7ePMY8nH++2b/DUR/3ug5dA64nxR2jSg/lYN5Jq4QBnjei5E+Kd
         XWG25vwmwE/v1fczybvuR2o0mI3EtembjuOK2I/JruBQYU5hsQCkIpeUeGVEyXlwf/wy
         WAxrP5sf1/6cAhj1zA8hy6GnVQw2jA1wR+CTA5dnKXOj4n2LBfp1wRteMVBjcCXzTXZ7
         r0oXG+hQbVWv17n+ZqWOEGP5oxeCZ33UWH6tndZVFpKvhrSng3d18YlLCF0rgPNqPWyd
         aKzb0lIwTXmpqKZGUSGLj6WbDXaPa9DL4/IKgE3ZISMtyzY2CrIwGXlgcp50UAuDMbig
         KA9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GXIRMsqhs9bB/wAYPu6m5UOMDYC5Y6ZrR7jZ1GiD+04=;
        b=dJEBOEIWd7kzlJTzberREb4hYPG581ebuixPDWF5dGSMGcO/mwBXCexpc9UXtFU7Bw
         as58q0MDvAEUd6Vga2SLjIRv9O1UMh3o2unic/1kqBF1eZx4pHAeLaAJkwXDo1bUSXik
         SsUBvbVxgmauLVoX8zIit/gpzXZPJ3rUs70HL3mTtZ/NUNbBTe7W7fxN49ilF31WWY77
         zKXYYsjXkXmsNE1JtKlI614WVtCkfB7k5I0pdGQ6RHYCqL4zcbIzkgjZ/8vyDjJprzyI
         FKKmPOKMypBxFf5d+JeaL+m/qYyrm85P4zpaddhTtdwnnywZKQy+fgIoXbO1w64EG3QZ
         /WDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GXIRMsqhs9bB/wAYPu6m5UOMDYC5Y6ZrR7jZ1GiD+04=;
        b=V6KbXxYBGThj0M9IRgLI8zQvp++SANH4FuUPK7KDkhJASgQ66QSx7CJm6iHfvSuQPb
         ig3UYncZFM8xh9hs7MmfdWCQTxB02BdensIZ4x+KOtTf9vdiDHdhDpozPjzd0liBPpoR
         s21wB7+77fpW5c9lp6ukBe2PYO+f9WNVJdUutkbFm1hecpgucH0oV7ZjfS6f6OwZXDj6
         rZp1o98RsrTNsnaHLI/6GAwJIEHGE4iLAonnaajzRknqBSDMUvJFh17q2ZqvOdHZQiQ1
         8E46AbtLxWXjLBvon2h/0iq3UcYdKlnWRNIF7OYK84PdvfinmzpezEd8/msuP4zBoTs5
         Xnjg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5308mQryBrAKicWY/6thvtqMYqtC3Q0/6sOOY4zmSoHnKmXjKPBp
	f8fKb7tDuhccApgoExaEPIg=
X-Google-Smtp-Source: ABdhPJwha+vgCm9OaAf55F2BwBezYfsXInT95xl37XdryOltCqurTe1vcjWhC3ChsHezyYwouHmKIA==
X-Received: by 2002:a1f:2895:: with SMTP id o143mr7324866vko.59.1597655841751;
        Mon, 17 Aug 2020 02:17:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f415:: with SMTP id p21ls1776929vsn.7.gmail; Mon, 17 Aug
 2020 02:17:21 -0700 (PDT)
X-Received: by 2002:a05:6102:310c:: with SMTP id e12mr7248108vsh.85.1597655841322;
        Mon, 17 Aug 2020 02:17:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655841; cv=none;
        d=google.com; s=arc-20160816;
        b=tSwffwi1K46pFTJpwKI4Jjr7hktDjvF4lwhf7FBg8NUoDlul0xTVYAJfNtiJjT2VzP
         YbyWxefg663zqOKWTVQzgdJmia7lqkBiMr8RMqL07wqHCO7rKf5tRm7otoUu6AJK3WHp
         /kTuzUJfaq4jz4U9EE2uTRJu8NUL6EmtmE42uYs8MnDW76AYzZ+gBGUpf9JcE/UijKck
         y/+sWeAAiSf88YIrx7sEaOo1pUAmLq6vHtUTXvNp+xOhqTCE1BbI/dHpYhMCtr+LV2Fv
         pWZ1rrOH0XFOmu0QEcuP+o38X38o4o2OB7o/qYPjO6QG0IWX55CBs0SQSBcJGQJGTwv4
         w/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=exYXzHUMf/iFSguNQmfag8NVMIwmEs2D9XqDGt6aa9s=;
        b=M1quJJbCAmKhCNGDxOwiSIK7Qjv36oCYNPQnM8zfNDfV4LqLoGDjbkbgcFOJ6GMNCM
         kffFrS0ng+6qnY/mCSoFgigDINA8y+VkS8PuylqXdlXo6WBgXKBW4DJ1xHdgOajwzR5Y
         hM1AKKqXx21CRiEKTuCd5dLAPgq6Uxi0GVl54TJoXDYHnagaBBCQYjFAcqvTXQzwNkrV
         PTaKgl7pi8/q+3QlgrwxfgrpM+JcvH0FyGscxu0kh3O1+GPPUPMfTCRpBmMBU6ODu3yI
         eJKTnwE07cdFLM5FeKkQ9EQIQBfTvPLDe5eo8NMDNE9Mii5rg3rTf8lVkbfuBZ66H1e7
         Gq6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sp0LSuWI;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id t72si949623vkd.5.2020.08.17.02.17.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:17:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id e4so7525465pjd.0
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:17:21 -0700 (PDT)
X-Received: by 2002:a17:90b:1287:: with SMTP id fw7mr7732879pjb.218.1597655840401;
        Mon, 17 Aug 2020 02:17:20 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:17:19 -0700 (PDT)
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
Subject: [PATCH] driver: hv: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:45:58 +0530
Message-Id: <20200817091617.28119-4-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sp0LSuWI;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1043
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
 drivers/hv/channel_mgmt.c | 3 +--
 drivers/hv/connection.c   | 4 ++--
 drivers/hv/hv.c           | 3 +--
 drivers/hv/hyperv_vmbus.h | 4 ++--
 drivers/hv/vmbus_drv.c    | 4 ++--
 5 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/hv/channel_mgmt.c b/drivers/hv/channel_mgmt.c
index 591106cf58fc..640fc1688d49 100644
--- a/drivers/hv/channel_mgmt.c
+++ b/drivers/hv/channel_mgmt.c
@@ -321,8 +321,7 @@ static struct vmbus_channel *alloc_channel(void)
 
 	INIT_LIST_HEAD(&channel->sc_list);
 
-	tasklet_init(&channel->callback_event,
-		     vmbus_on_event, (unsigned long)channel);
+	tasklet_setup(&channel->callback_event, vmbus_on_event);
 
 	hv_ringbuffer_pre_init(channel);
 
diff --git a/drivers/hv/connection.c b/drivers/hv/connection.c
index 11170d9a2e1a..23e10ebecf5c 100644
--- a/drivers/hv/connection.c
+++ b/drivers/hv/connection.c
@@ -322,9 +322,9 @@ struct vmbus_channel *relid2channel(u32 relid)
  *    If this tasklet has been running for a long time
  *    then reschedule ourselves.
  */
-void vmbus_on_event(unsigned long data)
+void vmbus_on_event(struct tasklet_struct *t)
 {
-	struct vmbus_channel *channel = (void *) data;
+	struct vmbus_channel *channel = from_tasklet(channel, t, callback_event);
 	unsigned long time_limit = jiffies + 2;
 
 	trace_vmbus_on_event(channel);
diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
index da69338f92f5..91a0582387d6 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -96,8 +96,7 @@ int hv_synic_alloc(void)
 	for_each_present_cpu(cpu) {
 		hv_cpu = per_cpu_ptr(hv_context.cpu_context, cpu);
 
-		tasklet_init(&hv_cpu->msg_dpc,
-			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
+		tasklet_setup(&hv_cpu->msg_dpc, vmbus_on_msg_dpc);
 
 		hv_cpu->synic_message_page =
 			(void *)get_zeroed_page(GFP_ATOMIC);
diff --git a/drivers/hv/hyperv_vmbus.h b/drivers/hv/hyperv_vmbus.h
index 40e2b9f91163..36199d8ea8c3 100644
--- a/drivers/hv/hyperv_vmbus.h
+++ b/drivers/hv/hyperv_vmbus.h
@@ -351,8 +351,8 @@ void vmbus_disconnect(void);
 
 int vmbus_post_msg(void *buffer, size_t buflen, bool can_sleep);
 
-void vmbus_on_event(unsigned long data);
-void vmbus_on_msg_dpc(unsigned long data);
+void vmbus_on_event(struct tasklet_struct *t);
+void vmbus_on_msg_dpc(struct tasklet_struct *t);
 
 int hv_kvp_init(struct hv_util_service *srv);
 void hv_kvp_deinit(void);
diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
index 910b6e90866c..6b7987dac97a 100644
--- a/drivers/hv/vmbus_drv.c
+++ b/drivers/hv/vmbus_drv.c
@@ -1043,9 +1043,9 @@ static void vmbus_onmessage_work(struct work_struct *work)
 	kfree(ctx);
 }
 
-void vmbus_on_msg_dpc(unsigned long data)
+void vmbus_on_msg_dpc(struct tasklet_struct *t)
 {
-	struct hv_per_cpu_context *hv_cpu = (void *)data;
+	struct hv_per_cpu_context *hv_cpu = from_tasklet(hv_cpu, t, msg_dpc);
 	void *page_addr = hv_cpu->synic_message_page;
 	struct hv_message *msg = (struct hv_message *)page_addr +
 				  VMBUS_MESSAGE_SINT;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-4-allen.cryptic%40gmail.com.

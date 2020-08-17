Return-Path: <linux-ntb+bncBCFYTA5O7QNRBFEW5H4QKGQEKDEFWPY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id B537724625B
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:17:09 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id 36sf9895625pgz.18
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655828; cv=pass;
        d=google.com; s=arc-20160816;
        b=iufq3hQUxFPYFhxUqNkf4cyNDbrsjC4y5Mcu9V2qCz+wwOdU2oEiXARPehr8dvd1Kv
         Nz2rDW1FKm1VIKYT+RCFIfsr78zE/M+AkyTgd4r3K2UmMgGFLUiUnOvVA6nhDmKWfvbC
         uUljjCiNGEHvWfnlXWpz3T5tfJLt3oziKwOWqPWi1Ay+iq4Lw2E+KwmJh7bgKACBpZ5M
         TgR6zNeClxnvH9YG2DAu3zYc7XMQqjczNo4/206G/GXsbn3fvQybNbLKKBqQD/q63wNr
         CVFiOyHffBDXlJbCOpB+ucKhss9I0q562Cp6PV+r2T38CKJJSNLjc9X/zYdsMMfZn/nE
         OtgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jKsZ6AXLmf/YSSVDsasNEHXs1Poc5RJQMAdXs4GiJzY=;
        b=g7Hv3PIGI22Hw0IokmL05ONatxoXiU76o8WxbXuocc1+ZahhoVH1ANaTA13yLKwfy+
         kJG3OHc+SJ+HXFTTm9hsOzBu/wW7cAXV0CQZqOzzgnAaVWbrR+kybsjpkesfb3JYqPhg
         H152jF6taVRVUgwy1VmlVKjU/Avjde8ZRlhM2of6EEFcSZBvtd/zAB2Bm0U3/usoFebW
         U152FRotfJKpocrSCJmCU4C39a0BhtpAY+cDLlKR2XWlW7qsPEc/zNAORudf+OWVgcg/
         TLS1QvnGmqyj17Affj3TOeLpNrr3mjSwpVfuYaSx53bU3yCSkzLY1n2pDHBD0HgvNNT6
         Xsog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOU3It2w;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jKsZ6AXLmf/YSSVDsasNEHXs1Poc5RJQMAdXs4GiJzY=;
        b=nZCN9R6BO29DsXJCy0rUZJ+7y9agHnA9kA7eH5hOTCWSC+4VutJGddVE+AV45Cv3KK
         sJxIxNQffv7Y6TPjLk1ruLZG2IUmf0KAbj7506pdszRkvKCcfoceX62Vrim28CeeNSzW
         hgM3DkI6WNLbRRZa5GlobrxqFFpP/9xFPOAt5MZmMSJnF2JrGJG9ZYnIEuK4CTCElXX4
         C3sIuoYkCfYWmNfn3OrQxt9JP2DtEVLrmmRV4xTH57rD32V52/t3Q07EAHU7mQbhvr1J
         rHhpKf9U9PAk4qd4R5lJaVyxbR3uZGoLu7ga5c8XqvsV+OJq9v7NQqYpHizvk7bIhD5d
         c2oQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jKsZ6AXLmf/YSSVDsasNEHXs1Poc5RJQMAdXs4GiJzY=;
        b=tkleJGT7LJAoRT0rB+okiSTuOFo+1mWewYv6/zJ1+j2nPek6YVADqm26kHZM52Ty4X
         h6zx1AX49xWiCmFiR52cDl2Yi2h/mI5ylNJqqT8Fze9XKmkBLCbDn3WGS5K1SFMo7U+t
         gl9uyZO6Y4Y/xJSgB13IIKPmakZNF6uKE1jmIiv+K2gljIsUgGDmHIO9yocslxGSt1yf
         q4UFpQllOgVYBlVK3qyDrksxC1lL61xA4+DSTZn7OIDVuNoUOYT5MhItlgPBTOnsvmrL
         3ezdtBJynQxcBG4YoNIRXgY8T4CQvWN/WJBkeR92MXQf5AvafxUoaIMJRmK5kkxy73aB
         ljLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jKsZ6AXLmf/YSSVDsasNEHXs1Poc5RJQMAdXs4GiJzY=;
        b=MUdyhlO3Dq9cQTeweFHIsqfRvGRXT0Er7vzbn4tJiTEaL7LvmNz2Lxs8pX85n1A+Mz
         Fo33a8msD8SThzq9yeodrMRpQecAgeXWFJbCWZijb0aoJo+5khKspVlBTgZkPylDJRbN
         JtWwVJJDvkKqCTEvlt+H3/j6NYgVjm7mP0g0Yc53uCELPfJYRkXnOuiaQkXeu4ku+nK9
         t1NH+6I0WWCU+tQZkkCl9GmUhwP+T8FK8ojBZyHkrJxJAopesfORoJ4BstTIdKbyBdp8
         yOjYk/P8KX4ZarBbYatPjZCG1np+VpNMMdVVCE9dzd3OphSS5ibGWOdOJoXYhVZ20M08
         CaJw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ix3fDsaKyAHKpLeszp3/A1BpfsAzfPPLYyR18ZXdQkIk8MDmW
	7D2KOk45X6u3nGk79qPWqeA=
X-Google-Smtp-Source: ABdhPJw0ACwPupL3CmOGfjwB8RxohQ+nUnjHL4GSRZtbpT+JLNQXYM4ulv3dsPU1fLqst/ko6WcDXg==
X-Received: by 2002:a17:90a:ea83:: with SMTP id h3mr12539564pjz.170.1597655828221;
        Mon, 17 Aug 2020 02:17:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:79d3:: with SMTP id u202ls5618728pfc.1.gmail; Mon, 17
 Aug 2020 02:17:07 -0700 (PDT)
X-Received: by 2002:aa7:9904:: with SMTP id z4mr10486431pff.32.1597655827760;
        Mon, 17 Aug 2020 02:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655827; cv=none;
        d=google.com; s=arc-20160816;
        b=zugj5NwhLv8yybuhrrUCkgV8L7HV8r9fevZJ0VOIJROuTh6T5QL+3JOaxCI1BHMF/L
         eezqEt7uiOQxeeA3SrIhAzoHAGUt6Xi6n9haZiOjJCcP4gUX/ajV5pl+ZJTq2cZUo5xE
         zP/etvisvzP/7hM8pZGaFc8bXmtYoWv7JCcc7r3H92B/liru2amw4rQ0sqfrfZ7sDEHY
         5EP5wW6r6vpOsDt91eVGW2RDdzZh3w16+8/1Sp9bHDu22M+rovR52gHppKOuWAXLMhHZ
         0iGG0swvbuDHwfDm5J+9oLkcFyin98ZvYhjmqmY9IolUivhcyjllJigeS0EWTbsAsi/E
         I1pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=uZ+1GKxChp21LTxKeZeHItaYyTUEZmeDAjJJ3IuyUSU=;
        b=yl08tDCihFVhpEUo2lF9RytJvSy3OUIkxZ0KFdXw45rcJo5FxazR4yAQYSn6BvhYeB
         EiEJtdqAfin7yZZJTDdLgDiBzVWTVUePrePu0NkUCGWPYFLYeeVJaeLbA7qKgqBrPsLc
         sZzXCufJGr8PEsaeqs8sfW4a6wtoXEFRXOdxCOFMIhQ+BVuzheKqksVUJlbM1wRkmHVX
         1nO2qMYUeav6Ir2XXAZY+bn+MQw49lpQ5k9YK78m29xsGzXNY7N4m4jsktxcP4RxH/9Q
         TNj/cWaeKj8QhWwAKklQdq3SyJcCd7+Tyd9BU8E+PaPIuvks4HWBh9UF7xHkvvOEY/eB
         B8Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOU3It2w;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id a24si885396pfk.6.2020.08.17.02.17.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t10so7185598plz.10
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:17:07 -0700 (PDT)
X-Received: by 2002:a17:90a:3948:: with SMTP id n8mr8798780pjf.156.1597655827403;
        Mon, 17 Aug 2020 02:17:07 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:17:06 -0700 (PDT)
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
Subject: [PATCH] char: ipmi: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:45:57 +0530
Message-Id: <20200817091617.28119-3-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QOU3It2w;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::641
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
 drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 737c0b6b24ea..e1814b6a1225 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -39,7 +39,7 @@
 
 static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
 static int ipmi_init_msghandler(void);
-static void smi_recv_tasklet(unsigned long);
+static void smi_recv_tasklet(struct tasklet_struct *t);
 static void handle_new_recv_msgs(struct ipmi_smi *intf);
 static void need_waiter(struct ipmi_smi *intf);
 static int handle_one_recv_msg(struct ipmi_smi *intf,
@@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
 	intf->curr_seq = 0;
 	spin_lock_init(&intf->waiting_rcv_msgs_lock);
 	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
-	tasklet_init(&intf->recv_tasklet,
-		     smi_recv_tasklet,
-		     (unsigned long) intf);
+	tasklet_setup(&intf->recv_tasklet,
+		     smi_recv_tasklet);
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
 	spin_lock_init(&intf->xmit_msgs_lock);
 	INIT_LIST_HEAD(&intf->xmit_msgs);
@@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
 	}
 }
 
-static void smi_recv_tasklet(unsigned long val)
+static void smi_recv_tasklet(struct tasklet_struct *t)
 {
 	unsigned long flags = 0; /* keep us warning-free. */
-	struct ipmi_smi *intf = (struct ipmi_smi *) val;
+	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
 	int run_to_completion = intf->run_to_completion;
 	struct ipmi_smi_msg *newmsg = NULL;
 
@@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
 
 	if (run_to_completion)
-		smi_recv_tasklet((unsigned long) intf);
+		smi_recv_tasklet(&intf->recv_tasklet);
 	else
 		tasklet_schedule(&intf->recv_tasklet);
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-3-allen.cryptic%40gmail.com.

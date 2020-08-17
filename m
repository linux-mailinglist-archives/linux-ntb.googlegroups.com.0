Return-Path: <linux-ntb+bncBCFYTA5O7QNRBBUW5H4QKGQESBUKLGI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2980A24624F
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:16:56 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id gf16sf10098194pjb.7
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655814; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2iVrlw6htvXPfIpld6FgJ0j2eidu/wvYzh1oMbJ/7pbNj6adJNIZQb8DV3LZQW1z0
         m15qgDzhkj/5wj/jaDuVdukQSgl/J3MOBmgs7X75oPHZ9fk7n9N0/ivaXY98FKgglvR5
         /DD6ZLKeYynunQbOQ+rID4PESD6l7+rEwIQlBSQHg0jslFo46e+By33NVsS/KCqa8KCo
         gyd5E5QSwAvn9LfWL6j81SDnT0zCcaUB23BHxbKd6K53fIH48Px0X0W1MPgtXBr+nTB6
         PPrsqYrnNSDC5hoGkDvGyDKuUFz77I4pwcReXxnuNQiuxEjRXvxYFqf0RFgIxzaLDSHb
         05wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+xraWVOs0nmvUFLVJV3DEq3HRCPAaHD8VghfzgPw5GE=;
        b=aLjBeaa0siHv5c7uRF9qmbRwP5aMO5qH2SMtHll1J23a4Zzl7yqjyVgnERt81zz+kT
         HpCdY5uGdkLyqk8M6tdTvweN2llaz1q6c8cW6Z3+889JrVNo6XXpnDcdisXOWjCbVfrl
         BinK3o4OrBYaCv4+X6maPZ3Y6XjLeXBkTxOCHR/nZuSFldWu4XcPqVhXpEPshgafVEOO
         jLLt7bmqwOh+OH2aHjwtHL+l2wsr5QuzCPU2wyYW+neONpICcZ8FMMBxji0UCfw3XhRy
         Rhrwm5JsaRviTqo8P4gMcEvw+9QmOyEkYcAhcXpPyE02Ls9kUlIX9OHb5Kd6zoGzkuMJ
         N/Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q0W/VwIV";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xraWVOs0nmvUFLVJV3DEq3HRCPAaHD8VghfzgPw5GE=;
        b=Cflo/k1en9+Na0Z8KBOkPlVC8Nx7finMFud0EnBYAtVifHExTgddUImnTXkd08cTfH
         lf7pGLeNCtv5/VRkqq7d7o7nqIDeVW2FV/ZwCMywBNbBKwHTEmNC6YiR3F92uHcpjpvS
         Ih0Gp40qA2amV/qK1B13l35QWR9EorhU6AvfcsGQbWcrC4Dpu5IgSPAeGgnco0jwr7VJ
         5vmkkRG+C8FMPFpoUQvhrLqHorRETH7dMYPz2u3bO9BIBveF2MQs94E0nJyB963e40rU
         6S/QNMhkSdzrrWcvFpWVIjUBedAleBuV0n8EQmutGGHwnhay+SOydsFYzlkWyhWzXHyr
         4P0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xraWVOs0nmvUFLVJV3DEq3HRCPAaHD8VghfzgPw5GE=;
        b=Xp3ZLUSAuPXgFHaLSOb9LzlnSemm63w8dVnDONDw6Nb3QZyuYOw5F6Gcrxxpb+Pxok
         xaDDXdnYajvSLFR+PqP9z7o5/2t9jbtuSUgl/Wi13/hD9AVQNH5cry9Hf/zUxUyKhQ6r
         TJuM4TeE4leOckPY4Z6MI5hdNuVPLxuuOLvKLNQyDtcGNs8r+N1tJTXG52I2C3iBGVdb
         /d54h5vtGJdPUln/uAKu2PJo8SFYNDM0Mr+p7OmGKId1GvG+yydzb/4+SYUB7B/+8y1+
         8dFB7i7vECnl/Zu/UiCfu3j3aojVNe4Tsiuo2W10zllBc8pEUV59MJzaoAO/e+Ib27Iq
         ZTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xraWVOs0nmvUFLVJV3DEq3HRCPAaHD8VghfzgPw5GE=;
        b=OMBR1Mdmqht/rx5u9MAoeHDThf6cie2wjlxCjlUlBsYUIvZ1N7ZBugGPK2HRAfLbxL
         bV8mG3H3nyZqjUnnddDk2lg8H+dpAfOE4Fl1FTJayAPkYkHdKS7wSElCBEzM2afqG328
         CeL9/7cnUkd4VGipRugRDFaltjhEjMCF/EDt60iqs+SmANLr3NAp1nLGIpI+fJnAX0WI
         l/e0r8SOx3Jl7+R2kHFvwobmfz6e50bb+oIYGj65N2x2odvWf6RXyk2J7HmylYW0cocf
         GPlYcUVHRje2EAzdQ1uKdXsTMz3EVRPLC4fjJcV/0gjnZjVOPYZkfZ17zVh6e/CG2JIS
         BO+A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532T3yU39EpYmJgdaQbE4n4wcjY70J4TOoothTU+sU0FqxlzEcE9
	B+Wdu46WW0TDIjD8Z6FAzUA=
X-Google-Smtp-Source: ABdhPJxEisfz+CFvkSwV4cFqbuQAqygPyFrDjmHmKnUS8/q48KJn1T74efDqIswDJB2ASK/DT45Gjw==
X-Received: by 2002:a17:902:c286:: with SMTP id i6mr10299646pld.63.1597655814685;
        Mon, 17 Aug 2020 02:16:54 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls6717712plb.9.gmail; Mon, 17
 Aug 2020 02:16:54 -0700 (PDT)
X-Received: by 2002:a17:902:b683:: with SMTP id c3mr10647796pls.248.1597655814277;
        Mon, 17 Aug 2020 02:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655814; cv=none;
        d=google.com; s=arc-20160816;
        b=Wotv9mb02F8cAr0NvNBHG1yB/QC5M1SksruhodJCKXResMx/TMglumLQrrKA8wsQvt
         Rae79d5X0o33+fK00Jk5cXdYrbqWkpP4GzIC7ypz9uERszG5XkCOe1YtH0NWoe7d55Zu
         Dd6zgOcnO/fQ4AsSEiG05ClEWUJNGHLs8UhOmW2akvv+xzGN++5jSv65/tDWpZ3fP9Oy
         KR83aMJeORpgeXHrWRvD+i5X3JZKceSfRe84Zz5XKkQpJREgOslDBMO/WJXlLLDp/55a
         z/CbgWtR6wsSc7g7dePsiiK76elq2qoVxXmcomp7zWuGo34AS+vjui9EpDT7kwllC5u5
         3VUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mHuwQk3c70LEeVRDgRBhzwGDJ7nUBqanmZ13DbCY85U=;
        b=Y6lvcdN3PQkrPBR1pdmMwerSLtqNPjrZ4JAZcwrpru4qfoHMl7BmVbarNthQzN33fV
         h6wGMC65jmvljUa3PYfWIhUj9HC9QKRttieLgJHDNeB/UY+CaXvHyLQ+4Jh2pdqIfYvO
         igFhv+2idZFDvIvbrOryHA/RkkGjhyAMoaEgZWdCZ9icrRcNFBF8RvUdS6QTGcFOKMQ1
         sXUYCuSbRvf/L9zlr9pBZuEmf/5C7JBanWwnkk3jy2xjKTEISLvb7IrIRTASKppA3rQd
         XSJfiAjsX7ae1SavLDAwRIj0wlVZxxzNd/j8R9nogIGPcrcYCCQsEuwwJuZ7VKpAFyMe
         xzRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q0W/VwIV";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id cp11si1155684plb.1.2020.08.17.02.16.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id m71so7936036pfd.1
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:16:54 -0700 (PDT)
X-Received: by 2002:a63:5213:: with SMTP id g19mr8976321pgb.44.1597655813910;
        Mon, 17 Aug 2020 02:16:53 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:16:53 -0700 (PDT)
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
Subject: [PATCH] block: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:45:56 +0530
Message-Id: <20200817091617.28119-2-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Q0W/VwIV";       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::443
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
 drivers/block/umem.c    | 6 +++---
 drivers/block/xsysace.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/block/umem.c b/drivers/block/umem.c
index 2b95d7b33b91..320781d5d156 100644
--- a/drivers/block/umem.c
+++ b/drivers/block/umem.c
@@ -405,7 +405,7 @@ static int add_bio(struct cardinfo *card)
 	return 1;
 }
 
-static void process_page(unsigned long data)
+static void process_page(struct tasklet_struct *t)
 {
 	/* check if any of the requests in the page are DMA_COMPLETE,
 	 * and deal with them appropriately.
@@ -415,7 +415,7 @@ static void process_page(unsigned long data)
 	 */
 	struct mm_page *page;
 	struct bio *return_bio = NULL;
-	struct cardinfo *card = (struct cardinfo *)data;
+	struct cardinfo *card = from_tasklet(card, t, tasklet);
 	unsigned int dma_status = card->dma_status;
 
 	spin_lock(&card->lock);
@@ -891,7 +891,7 @@ static int mm_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 	if (!card->queue)
 		goto failed_alloc;
 
-	tasklet_init(&card->tasklet, process_page, (unsigned long)card);
+	tasklet_setup(&card->tasklet, process_page);
 
 	card->check_batteries = 0;
 
diff --git a/drivers/block/xsysace.c b/drivers/block/xsysace.c
index 5d8e0ab3f054..bdd50a87d10f 100644
--- a/drivers/block/xsysace.c
+++ b/drivers/block/xsysace.c
@@ -762,9 +762,9 @@ static void ace_fsm_dostate(struct ace_device *ace)
 	}
 }
 
-static void ace_fsm_tasklet(unsigned long data)
+static void ace_fsm_tasklet(struct tasklet_struct *t)
 {
-	struct ace_device *ace = (void *)data;
+	struct ace_device *ace = from_tasklet(ace, t, fsm_tasklet);
 	unsigned long flags;
 
 	spin_lock_irqsave(&ace->lock, flags);
@@ -1001,7 +1001,7 @@ static int ace_setup(struct ace_device *ace)
 	/*
 	 * Initialize the state machine tasklet and stall timer
 	 */
-	tasklet_init(&ace->fsm_tasklet, ace_fsm_tasklet, (unsigned long)ace);
+	tasklet_setup(&ace->fsm_tasklet, ace_fsm_tasklet);
 	timer_setup(&ace->stall_timer, ace_stall_timer, 0);
 
 	/*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-2-allen.cryptic%40gmail.com.

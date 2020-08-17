Return-Path: <linux-ntb+bncBCFYTA5O7QNRBLMW5H4QKGQEFE5XI2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1D624626F
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:17:34 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id l20sf9887842pgn.23
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:17:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655853; cv=pass;
        d=google.com; s=arc-20160816;
        b=a9kDkCD/6KgIRC7zexGdG3AvXeOX0DQ4jD5c9k9M1iEmoKtLUo6m2HCF58mXgs/RPp
         hWAWYPtYFSApw0OYsx/vdHMS1toIlUp4ebWRXpE6t33TFCRO/oFE1W5RohUjlR91Yvmr
         Xqtxt6Kjh6sB/l4pWSgBWcHuBt8z9U55vKffvESZYqNSTO+pGk2n4AAh71K1j/x/AfbR
         GMv3YxRLsNnPSTb5P0PcDI0/EOXtS1plKH8RA3tT7HD3sPGQi0LHMrZsCcUyvgrSVjh8
         JIsjt6xVXQjFWjkDycQtGhtRIrRW6yIfjsqNuRRH4CGABIvWq9pSZo5j17FoQa+Mm4Xd
         r3LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+HYK4kIT/ohz0TTGx2b3jvuFlcXQ/EM2qDg7PtHQk2c=;
        b=OGby50HeqR3d1tDji52tB39JpFU8QetduUWi5FW4rrZWnHB5PSQpxtJkZyiollahRZ
         uPzHLLOFnpgGU3+hBrbimnQGIozuB534AMHjZwvQSYZ3KNgy4YWFOvquJENKNoBCeA4y
         k04Dk4SQj6PMSFESGOIY1o85D3eQsMBd1tV9b14Lu7A4UXwfUHO4Lj1UnZjySKzuy9tv
         2NO2bVOgyPpu2tq9MGznxLzN74RFjNjcMMPiIkkeCK8wP21nVXI+T1CmokWqq0HZ+2rS
         Pnt2s7TmQhdGdPIrpaINucmBUtZ5f0AJ56B+ZuTnpFPo1KhFtIEqV45BhkBoQT+Jjss/
         zbzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZeVN/cVu";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HYK4kIT/ohz0TTGx2b3jvuFlcXQ/EM2qDg7PtHQk2c=;
        b=b73/4sX/qvDmOiXqv4gGWsgzSUIL2A33ox93H50o4Gli9xIwnLGJUr8PUekRXa70CS
         AmnEke6BZF54OFDSOkQ+fTVl5WFnBbxbXTq3xZadRAWKmdUcyDHD/Vh5ns1pYDrNti8N
         LOlZ3iasenM6G+cDKlWaVG6rjiq3FrKtenT9Ug/0NBWDkSBmcQqTstWIeQpL9S0snVbX
         5tFTrqg7LgRf1FwwaESacP2h03klIxPBxQv9XTaiio9IqvU8Lzmtiwv+t4DUwD9YizOD
         laX9exUFkO/leqroh8jZD47aPcv811evBPIuPM4ZVuqdz0wSMYAM4Jx+L0eAg2Ru0wvT
         MEMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HYK4kIT/ohz0TTGx2b3jvuFlcXQ/EM2qDg7PtHQk2c=;
        b=aL6rd8AEJQ8Z0eoATos5QUnh/oiBL+rBGvekGWk8mQCI9g/kP9U8i2xOwprpf1yZh7
         Lt4FA26y9Tyj5mN/YLjK3KgS11Zihx89tBgvJNCuFR+bVLpRjisHFd+VCjuaSLUVPS5j
         cZ/RMTTWQMrs4GsolXOzjZeXO79K/2rwHeWWX3cIpK6el5/xwYmqJDh8r93o0gtZLi5v
         jO0Zr38KMBTF6VncItpDBqB3ajBGaaYrKjRCQu1w55zIzFYr3HZx3wOqh+W01spf7LL0
         L7Vr2Hj3Ww+Kn8pbdw47TxU85oGHWMav7O3pkqbgWyWV3twAuzxgMXCmmt+SAdab7m04
         aw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+HYK4kIT/ohz0TTGx2b3jvuFlcXQ/EM2qDg7PtHQk2c=;
        b=cSXDfRVFKLXBXOUyfQtgmAYb179GUi3WlUZLum4GdPqn9rX6AAitam7eJ0zewneeoE
         1ljBKJILHpky+Q7J+LmSVHdZfB40+ViX07uv8B1FTjfRjrLc9mR/YcnsIgJsfpp5u9CJ
         U5Lf0xlB891blrpL8MCPo1PUcQfXlt85ofSVH5kX6yjOw53pFWdwWGb54TucbK2gkZHl
         /UCnUYg+3QeZL82Y8cy8/RbFN3pleeXms+a9u0QdQ1s/2g43riQ51OUhkehlP08V66IK
         OGRwBvld9hAgQgACOXjvk9CmhZTzbgVCcpgLyOjMMXnFq9jOkaX3c4nwTugwjxGEHMB7
         NjyQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532BgTvg3iqkRMyl647/DJZh4xeBWcEeLZJtDzSjaorm0btoMR2w
	UJTDBnv7mDoOtScAkNlYt70=
X-Google-Smtp-Source: ABdhPJxjnywg/KHpCczSNdNkI3YoBjV72urozmuRDm9uGD5iCTf/Taauy2A7Ln5RSTWIUuZTay3JHA==
X-Received: by 2002:aa7:8a08:: with SMTP id m8mr10760587pfa.135.1597655853301;
        Mon, 17 Aug 2020 02:17:33 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:951d:: with SMTP id p29ls4405442pgd.2.gmail; Mon, 17 Aug
 2020 02:17:32 -0700 (PDT)
X-Received: by 2002:a65:624a:: with SMTP id q10mr9482673pgv.12.1597655852815;
        Mon, 17 Aug 2020 02:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655852; cv=none;
        d=google.com; s=arc-20160816;
        b=GSL2YdVkdb9JZO7TwfGMjJYKSU+mPUyfDhQPEqqWyTNWVPNeJDC3fHypqJdSyBuGMo
         pSMVtNQ5JpzJ0PHSZt10w0X6wdbTprRH435crqs0dNBzLXddMUOusSfEytfc8DEEMKqy
         ECjBRHjEzZcTSB3BLwp1+Pw9hatWcZ0wOT9++j7VYX6m2qxi6ZhwY5y/VzYXmd7FPBkK
         cTAkfqybKWSbbuWszwQLiDbS1aDAGX8mLYdbaiZC5u4N6thJVPlle51zR18nTtpKXF35
         3bQ9TeaSE6mLoQYAsOGn+UTdKn2y/ey+S/6WJDZImBMQgtDg+T8tCxaXcnXsPfjZNWpX
         ZJ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=UG2QYTpQjXlotAWADPceeuZ+a4WccgODIdL2SjgoSFk=;
        b=cSYHcb6glUBibUWBubmaV66MROQYN6ayLwlgm+78MwalOFGXrPno0XfvNOig51fIv+
         8tT6+cfXiwlNQPYVToIo1KSTy29IHvHODc5AoV7UstdEyvhf7sdvhavO/Qc0/326ck+n
         3TlEbNuuSe319gUCjWg0Lnif286O7BzhD7qmlSXQHwSmCGfYHkh71qfleCVClSy1bmnG
         Lsz9zwZNldW4D7Ms7C/FXZb4ILUKH7xKGu/lLfg2mr9rQgCpBH1albdY8bbDc7eWpOR5
         ecJRUbIj1rpw6l4tYgb2vGxKMF9C+9Ar2h4LPthH89ahIc0KBHmWolo5hW5qx6/VcHnk
         GAUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZeVN/cVu";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id bj6si145137plb.4.2020.08.17.02.17.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id i92so7691493pje.0
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:17:32 -0700 (PDT)
X-Received: by 2002:a17:90a:3ae1:: with SMTP id b88mr11550846pjc.156.1597655852504;
        Mon, 17 Aug 2020 02:17:32 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:17:31 -0700 (PDT)
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
Subject: [PATCH] drivers: atm: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:45:59 +0530
Message-Id: <20200817091617.28119-5-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ZeVN/cVu";       spf=pass
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
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/atm/eni.c       |  9 +++++----
 drivers/atm/fore200e.c  | 14 +++++++-------
 drivers/atm/he.c        |  8 ++++----
 drivers/atm/solos-pci.c |  8 ++++----
 4 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/atm/eni.c b/drivers/atm/eni.c
index 39be444534d0..540edea0ad7a 100644
--- a/drivers/atm/eni.c
+++ b/drivers/atm/eni.c
@@ -1521,10 +1521,11 @@ static irqreturn_t eni_int(int irq,void *dev_id)
 }
 
 
-static void eni_tasklet(unsigned long data)
+static void eni_tasklet(struct tasklet_struct *t)
 {
-	struct atm_dev *dev = (struct atm_dev *) data;
-	struct eni_dev *eni_dev = ENI_DEV(dev);
+	struct eni_dev *eni_dev = from_tasklet(eni_dev, t, task);
+	struct atm_dev *dev = container_of((void *)eni_dev, typeof(*dev),
+					  dev_data);
 	unsigned long flags;
 	u32 events;
 
@@ -1838,7 +1839,7 @@ static int eni_start(struct atm_dev *dev)
 	     eni_dev->vci,eni_dev->rx_dma,eni_dev->tx_dma,
 	     eni_dev->service,buf);
 	spin_lock_init(&eni_dev->lock);
-	tasklet_init(&eni_dev->task,eni_tasklet,(unsigned long) dev);
+	tasklet_setup(&eni_dev->task,eni_tasklet);
 	eni_dev->events = 0;
 	/* initialize memory management */
 	buffer_mem = eni_dev->mem - (buf - eni_dev->ram);
diff --git a/drivers/atm/fore200e.c b/drivers/atm/fore200e.c
index a81bc49c14ac..8c6226b50e4d 100644
--- a/drivers/atm/fore200e.c
+++ b/drivers/atm/fore200e.c
@@ -1180,9 +1180,9 @@ fore200e_interrupt(int irq, void* dev)
 
 #ifdef FORE200E_USE_TASKLET
 static void
-fore200e_tx_tasklet(unsigned long data)
+fore200e_tx_tasklet(struct tasklet_struct *t)
 {
-    struct fore200e* fore200e = (struct fore200e*) data;
+    struct fore200e* fore200e = from_tasklet(fore200e, t, tx_tasklet);
     unsigned long flags;
 
     DPRINTK(3, "tx tasklet scheduled for device %d\n", fore200e->atm_dev->number);
@@ -1194,15 +1194,15 @@ fore200e_tx_tasklet(unsigned long data)
 
 
 static void
-fore200e_rx_tasklet(unsigned long data)
+fore200e_rx_tasklet(struct tasklet_struct *t)
 {
-    struct fore200e* fore200e = (struct fore200e*) data;
+    struct fore200e* fore200e = from_tasklet(fore200e, t, rx_tasklet);
     unsigned long    flags;
 
     DPRINTK(3, "rx tasklet scheduled for device %d\n", fore200e->atm_dev->number);
 
     spin_lock_irqsave(&fore200e->q_lock, flags);
-    fore200e_rx_irq((struct fore200e*) data);
+    fore200e_rx_irq(fore200e);
     spin_unlock_irqrestore(&fore200e->q_lock, flags);
 }
 #endif
@@ -1943,8 +1943,8 @@ static int fore200e_irq_request(struct fore200e *fore200e)
 	   fore200e_irq_itoa(fore200e->irq), fore200e->name);
 
 #ifdef FORE200E_USE_TASKLET
-    tasklet_init(&fore200e->tx_tasklet, fore200e_tx_tasklet, (unsigned long)fore200e);
-    tasklet_init(&fore200e->rx_tasklet, fore200e_rx_tasklet, (unsigned long)fore200e);
+    tasklet_setup(&fore200e->tx_tasklet, fore200e_tx_tasklet);
+    tasklet_setup(&fore200e->rx_tasklet, fore200e_rx_tasklet);
 #endif
 
     fore200e->state = FORE200E_STATE_IRQ;
diff --git a/drivers/atm/he.c b/drivers/atm/he.c
index 8af793f5e811..9c36fea4336f 100644
--- a/drivers/atm/he.c
+++ b/drivers/atm/he.c
@@ -100,7 +100,7 @@ static void he_close(struct atm_vcc *vcc);
 static int he_send(struct atm_vcc *vcc, struct sk_buff *skb);
 static int he_ioctl(struct atm_dev *dev, unsigned int cmd, void __user *arg);
 static irqreturn_t he_irq_handler(int irq, void *dev_id);
-static void he_tasklet(unsigned long data);
+static void he_tasklet(struct tasklet_struct *t);
 static int he_proc_read(struct atm_dev *dev,loff_t *pos,char *page);
 static int he_start(struct atm_dev *dev);
 static void he_stop(struct he_dev *dev);
@@ -383,7 +383,7 @@ static int he_init_one(struct pci_dev *pci_dev,
 	he_dev->atm_dev->dev_data = he_dev;
 	atm_dev->dev_data = he_dev;
 	he_dev->number = atm_dev->number;
-	tasklet_init(&he_dev->tasklet, he_tasklet, (unsigned long) he_dev);
+	tasklet_setup(&he_dev->tasklet, he_tasklet);
 	spin_lock_init(&he_dev->global_lock);
 
 	if (he_start(atm_dev)) {
@@ -1925,10 +1925,10 @@ he_service_rbpl(struct he_dev *he_dev, int group)
 }
 
 static void
-he_tasklet(unsigned long data)
+he_tasklet(struct tasklet_struct *t)
 {
 	unsigned long flags;
-	struct he_dev *he_dev = (struct he_dev *) data;
+	struct he_dev *he_dev = from_tasklet(he_dev, t, tasklet);
 	int group, type;
 	int updated = 0;
 
diff --git a/drivers/atm/solos-pci.c b/drivers/atm/solos-pci.c
index 94fbc3abe60e..f44e1880cb74 100644
--- a/drivers/atm/solos-pci.c
+++ b/drivers/atm/solos-pci.c
@@ -167,7 +167,7 @@ static struct atm_vcc* find_vcc(struct atm_dev *dev, short vpi, int vci);
 static int atm_init(struct solos_card *, struct device *);
 static void atm_remove(struct solos_card *);
 static int send_command(struct solos_card *card, int dev, const char *buf, size_t size);
-static void solos_bh(unsigned long);
+static void solos_bh(struct tasklet_struct *t);
 static int print_buffer(struct sk_buff *buf);
 
 static inline void solos_pop(struct atm_vcc *vcc, struct sk_buff *skb)
@@ -754,9 +754,9 @@ static irqreturn_t solos_irq(int irq, void *dev_id)
 	return IRQ_RETVAL(handled);
 }
 
-static void solos_bh(unsigned long card_arg)
+static void solos_bh(struct tasklet_struct *t)
 {
-	struct solos_card *card = (void *)card_arg;
+	struct solos_card *card = from_tasklet(card, t, tlet);
 	uint32_t card_flags;
 	uint32_t rx_done = 0;
 	int port;
@@ -1294,7 +1294,7 @@ static int fpga_probe(struct pci_dev *dev, const struct pci_device_id *id)
 
 	pci_set_drvdata(dev, card);
 
-	tasklet_init(&card->tlet, solos_bh, (unsigned long)card);
+	tasklet_setup(&card->tlet, solos_bh);
 	spin_lock_init(&card->tx_lock);
 	spin_lock_init(&card->tx_queue_lock);
 	spin_lock_init(&card->cli_queue_lock);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-5-allen.cryptic%40gmail.com.

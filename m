Return-Path: <linux-ntb+bncBCFYTA5O7QNRBOMW5H4QKGQEGHKQKOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4903E24627C
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:17:47 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id y17sf10494548pff.16
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:17:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655866; cv=pass;
        d=google.com; s=arc-20160816;
        b=cOvLD197C7IoI+Js+Cg8VjbSA/ebSYQ0dnE7Cb7iPkuici2/S3YDpxrNHoBuEJDpCr
         TZJw3ixsxMiF4yHtG2S6Tz/eoLJkOG6fxk7ar+cKRlp1x35hzrSC3V2ufiVEGH8fVjJu
         1vCc2JerVlfLIlQH6+Yb2jtva56y8JgphDz0aLS9ICpZYknQtFwvHulZz8RU0NrSIKnz
         u1tH5sORfnnhC/kmvwtCnrsGS4uuje/ylvXzCOqEhQDipxj/RXe5lYYL3XYg7J8b0XLz
         21kk2ydMkvkJ4gi/DhVgj8aEahQEf4JDQePDlPCxOpZ4agYS9VLa2/+P9wq6S8ewwk0J
         L99Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=R+lyL9Q2xAVeK13fQYzXcH/qlMAOq9tSn6FcpWpAg2s=;
        b=If/JR+drkqWUXnqdBLf6/OX16ltG99/DonIcHobIiNsmDwVzY8z4m5e1/U8GSRwt/D
         RFyfjtASVSPRLiEOzeBCq+CtLzii37g9J9DNJ78crujo2J5+kTiidvRoVcluKAhan5cm
         NZYeq8QmbpWs052ULqb9o/LfSeoX3nUuNCY2bxI8eIWnTXxsPhGit+NY+EgU4SnP1y0K
         v8oYN/OB25Wt61sAHc/cSznB1K01cLmZLAqgA/Q5k22QRhPOYpOeo5+6bwLAen4BSH5y
         cTEzTuJgSiO4ciL0FJrCm6xQ5h5DizChdi7O0g0UP1gN8ypEf+Wrfe70WRfFiPHSy0l2
         UZWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzbwEFTq;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R+lyL9Q2xAVeK13fQYzXcH/qlMAOq9tSn6FcpWpAg2s=;
        b=ar1nveXVaOjHYx43am9oAtz5/D4Oesc9EULFO+sZi6a8DzASLOwRxGyh7Dk29feRl7
         uog+Fivs08qtWJMvLVP9cKVk+5p2Big1Ti2Pt+FoHxnyCaIr6o/ZW8M6jswmpjDKRIi6
         QyZ7dbVappDLvdLB0KGkbMTLD9v31FBcwR8LQZZ3Qk8kj0m/nREjiJXgj6MwuHOARqR/
         K17Pkft4PMYly0g1naqcCXHbmIrlby/uIIlY+mk6XqIldgXuDIK1UH/EV2pGsBcaKK+z
         rmAPvKsKQQO3g2XSzZs82rbuH0vMuPSUFFj+3QbagK2/laFi64BkWpnH/s4yfz44d076
         8eSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R+lyL9Q2xAVeK13fQYzXcH/qlMAOq9tSn6FcpWpAg2s=;
        b=HymTjUOAGKo50GqKMhzSk5k6gieA9DgwsO1Wz3V835q4Fmu1g7jwUmdQr0xffNlpIh
         4u13n86+AskfSCjEmwnK+MDqwh2a7YPnM69OT5R7TUxEUeQDPZSZt7IONhOeLLOIMn9W
         4NUJQPZhP2ko6il+ifS+pBFyTye5VYDIfu//66ffZr4AR9aL5LaxzuT8Sdp2ntLvAZ6L
         7FmIPiuj0usLOXOTlonL7O3QV65GmR5p+eGeLTXKyC5ftPtsu/xCLZ/zq37ZNgNpUqIm
         wg+7YsgJ0gw+VcNeI0EiNxlVL6geFLZlsUOGI1y+W/9qGSDolSmhI2QMUeglTwdTEFyC
         P3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R+lyL9Q2xAVeK13fQYzXcH/qlMAOq9tSn6FcpWpAg2s=;
        b=cNbsKtaMHWrV3CpqGr2mkVUa4ElD21ufOW5rCHKq35tfHrhPAvAhYeDeTKouaI1okl
         CGA60xOEW8OJDKKY+6xX6rKCowqziJ9iYmvUB5QJZ85IQt+0jjJJUIOkzjAnmJ9JgL2Q
         zq930LwLmegqGJZQ7JSOY1z8RbfvpFRpfTQS/VN5h+8HA9jgHfgWuNk+TEMP1Q1aajWQ
         eBXDj+d/foKD10ZnXxbc2oOvjtnPo4DkZGlw9TPJYbjVtc3PUfM+8zEIZiecDGQhgzmN
         3S4zfIGmkIFjQzXp8denfPzTxnESuSCmxSQaSFcp7R1GH3N7OKUDzl10k/zZ0aum1GDF
         NPWA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Ld2jAuLe98/nwYa7S3Wr/NEeY3argTAj+xk8G46D6bQCKku6G
	xS8C3IB2npKvhystGHbzmb4=
X-Google-Smtp-Source: ABdhPJzZz+JcdjrH0RHFm+ReIgzLbF0ja591cx3BezOikWWtwzIevAfeAo4emWayZk3h09NkBsxPAg==
X-Received: by 2002:a17:90a:1749:: with SMTP id 9mr11881686pjm.127.1597655865813;
        Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:951d:: with SMTP id p29ls4405592pgd.2.gmail; Mon, 17 Aug
 2020 02:17:45 -0700 (PDT)
X-Received: by 2002:a63:170d:: with SMTP id x13mr9364137pgl.413.1597655865472;
        Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655865; cv=none;
        d=google.com; s=arc-20160816;
        b=VWNLaPlT0vHpFEIx5jmeM7lEGm0RlmwrpgS4Fbbm+uHXG6ojGv4uzN35HhQxX61AtB
         6w2gyNnWRmPhqVHvGi5MDkktnI6iKyP35pkQ+MFBQGrakTmJaxaZPTCBiAl1qyUD+oqj
         oVpSl2gJ5L8SXlLodxkxEdx61xTZ8koVq2r+9a610ZyEee27AAmgM7bkYIguYmCjFOGO
         IMZ1O5Q2LrIarlCGwBko4jY6XSDJE4SYwN8ljz+yBa5KtAAr2GZugg/t6gUqOtCsb28i
         YQLaUlONMhCqtC3r17F5PM2eFLQ+IgwZvCN7VG4vQ8nug5kulxDUnNmsO5O04SVRSFkv
         kbLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Mo6iICj1w8TKwOisUCBNzTZG5p5dM66mXRaY4cwKyZk=;
        b=Jd8QZ0LsIVsn6RGhZti5zF6ieZDTS8gy05KcxP27/Lpa2cyttzT1kaYlmOvOk75/K0
         8jZnqlvToqMfSnxhD+vkC2v4WNXagft0w6ZMOT5BcsZ07LRUYyDfdqtqRY1E03BWNahJ
         8wffyLuYo2tN5ECvyy1epF4bW+AEB8RXqLXHHI5VS0C3HvEJUIGUs0f2JEX2eoAjACoy
         bC9HKLDDC8G8nqJUT4DQhO45I5FwJmCGvrmRnOTmp49OsEmBbB7UqSGbvQtENj4vMhCx
         zBQuwb/uWAPKzDBXKcfDLKmgGR8y/NaEpeYmbfhBN/rzKZ2rj9hNl34UiT46Nqe7DTRp
         BRTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzbwEFTq;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id s2si972188pgh.4.2020.08.17.02.17.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id f9so7394692pju.4
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
X-Received: by 2002:a17:90a:2210:: with SMTP id c16mr12286360pje.65.1597655865119;
        Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:17:44 -0700 (PDT)
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
Subject: [PATCH] drivers: ntb: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:00 +0530
Message-Id: <20200817091617.28119-6-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TzbwEFTq;       spf=pass
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
 drivers/ntb/ntb_transport.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
index e6d1f5b298f3..ab3bee2fc803 100644
--- a/drivers/ntb/ntb_transport.c
+++ b/drivers/ntb/ntb_transport.c
@@ -273,7 +273,7 @@ enum {
 #define NTB_QP_DEF_NUM_ENTRIES	100
 #define NTB_LINK_DOWN_TIMEOUT	10
 
-static void ntb_transport_rxc_db(unsigned long data);
+static void ntb_transport_rxc_db(struct tasklet_struct *t);
 static const struct ntb_ctx_ops ntb_transport_ops;
 static struct ntb_client ntb_transport_client;
 static int ntb_async_tx_submit(struct ntb_transport_qp *qp,
@@ -1234,8 +1234,7 @@ static int ntb_transport_init_queue(struct ntb_transport_ctx *nt,
 	INIT_LIST_HEAD(&qp->rx_free_q);
 	INIT_LIST_HEAD(&qp->tx_free_q);
 
-	tasklet_init(&qp->rxc_db_work, ntb_transport_rxc_db,
-		     (unsigned long)qp);
+	tasklet_setup(&qp->rxc_db_work, ntb_transport_rxc_db);
 
 	return 0;
 }
@@ -1685,9 +1684,9 @@ static int ntb_process_rxc(struct ntb_transport_qp *qp)
 	return 0;
 }
 
-static void ntb_transport_rxc_db(unsigned long data)
+static void ntb_transport_rxc_db(struct tasklet_struct *t)
 {
-	struct ntb_transport_qp *qp = (void *)data;
+	struct ntb_transport_qp *qp = from_tasklet(qp, t, rxc_db_work);
 	int rc, i;
 
 	dev_dbg(&qp->ndev->pdev->dev, "%s: doorbell %d received\n",
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-6-allen.cryptic%40gmail.com.

Return-Path: <linux-ntb+bncBCFYTA5O7QNRBQMX5H4QKGQE3XXKRII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id D90D42462F8
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:20:02 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id a5sf17715489ybh.3
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:20:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597656001; cv=pass;
        d=google.com; s=arc-20160816;
        b=RlRoE4QDSddTI18dT6XObPrBUyPTRRkZKGCEU0sCGPhpm+PagcfSDCXJHdXyT8E2fb
         YIFJdhplZuY6hvXM33geJ00MPny29z5Xv3fp+ig+L6n/P+GZVYWbHRZ0kITCLoADshHY
         WiGX43MoxtU0oSmJhwBNYO38OPKhk2jdxJX5q08Q4SZpqtrSENoAwKEYUctHxRnJx9Vz
         +vDfjCTl8y9/O7ls6QHhMp7CmgSk3mjSQjS+zFLVfeKPvq2Bzjye6LUIQIfmNfTjarqd
         aekDOv5RFzP0GG7lxmM8HavxfMMqzG1zrZZoDWrIzE/1Z5PfvZG+qTdKTUntm+yum+so
         VG/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=iFSb64Xwo1H0DxWBhyXnUcaKRS5sozHaeA9+DFLQqwU=;
        b=FEZWSEI6g4qNg49lPsk7t122DqvikHOdYTvvCdb9Dv0X1Me+wy0tnDT+CnPDc2MXxX
         ZQE0+hq5x0/Ew/TVIVJaitNBLHblNJruHId7J7CD9Z6L1DVcExHRGIzb84bKK5gI3vuV
         c2wHyHXnWwKpw+QhUXPMY43LUmMphXKCbezXv0N8gfgpzq3jrnLTqsc/DNinrHklR6X/
         GKK5der9CmzJSpCPwjIFUHfJvDufzpoawPE8sGfETbbHg6qh+IdDiqyT/PKHsVn2fbc9
         JAaU2JGopnoDsrP6NyKawRUfdWBXy2DXHKqvJZOISRSWLdTswoJULw4rZOXXcLx92EdK
         m8/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mbKVOHJM;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFSb64Xwo1H0DxWBhyXnUcaKRS5sozHaeA9+DFLQqwU=;
        b=r8Y9os5+KcA2MSg5fI8jnmes3NR8YOpIodDAd4lKIlbBxE+sQG+ykihurQQnJxixz7
         5iViTpy7m3eP0nII+Kr1X6HDbbm+FnKPoOjheeaZrZ7l+1iFcJ6lt5DZOU4YmHW7shk3
         Jch6/NPBn8AdL0doOZMn47/XtwJ/tXYCCpaO1mmTcrUCHlblGIQw2ZXoN8e2m9byoN71
         DHGc3r3WkLWYy8kjyy7eT8avHn02UFkvR1xD8lly743HQC30I6FIZat5NYW2UT4AxyLY
         XP7BRIYzrDc8BdKfPfxaxkx/9I0716P1YQtADzIwxWzZ4s+zB+5MrElreWZhbgX7w5l1
         UjOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFSb64Xwo1H0DxWBhyXnUcaKRS5sozHaeA9+DFLQqwU=;
        b=t3Khthx98cm2hUM3hE/6gji1fsuzjLCgZBkF5IH/KdZrrvfh0p7P4vwqX1sxvv/nwx
         VieA6ZKveavNcLPnY88ase0r/EYq+PCmf8wT0TQUipErkD8QdSmOfPnTjO+/bjZ4ZBog
         iPML//+YJctEHTXCx3Z8vpNu1CsrYAEazgyYejc6E+esxybh0vVGBjmPWvpLBy9bxk8f
         iEg1bVwLE+FgQkiW78mLX/Rx31ytm2wwteclj6uIKbDWhpj6fhttPMaJUOCSqUbdK5Rj
         jchASt/kHL2MP0LSoghXY7KXDZFtEJoL5YB7OPMay2lRA+67xOHA0lYvW23he901mpZy
         zTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iFSb64Xwo1H0DxWBhyXnUcaKRS5sozHaeA9+DFLQqwU=;
        b=T0RW6WPe60FpGFzagM5YeWwBhSu+FBBPm2FZsiv0exyvwPJEkPSlIcpyKoXhlb5OcB
         s2gsWEJzbsYonZXxAEK76oPryQep4MdlEEfsMCwJENsW1BhJWLJ0p+ivIsIUFhaTiiyq
         Opn75NKEZpbCQ83UFufsuhr7NhpGcWTgYxMCzyQOJOkq2IT4rCgbt5cBvcFcei+SJt8T
         dEgCET4WsSxGHozcA/zc/B2tG+IfZm2nHZTtFSjich3KExfWIXcOdfTjxIqp4SzSBbNr
         zW1ctiSJIS+kP3jWQo50mcejUAlbw+RTlZa3aY6OV0hm6HPaSvdjeZfokXsYV33STa+K
         RC+g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531nlAoGOhLoFRgJvM9cBfxetaPij18LDikELcm+KZcB3pnjR6qy
	cJbkSFjITT7gcKu8IZ1xJbk=
X-Google-Smtp-Source: ABdhPJydPm8ogdcLEDdZYUoGlFNbHa0FetczPZcd9f+nKLAsGtqCbCJS3TSJvHNOZLvXxhZaX/FXeQ==
X-Received: by 2002:a25:2314:: with SMTP id j20mr18952019ybj.508.1597656001521;
        Mon, 17 Aug 2020 02:20:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:3c3:: with SMTP id 186ls6451973ybd.10.gmail; Mon, 17 Aug
 2020 02:20:01 -0700 (PDT)
X-Received: by 2002:a25:ca41:: with SMTP id a62mr19491742ybg.252.1597656001233;
        Mon, 17 Aug 2020 02:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597656001; cv=none;
        d=google.com; s=arc-20160816;
        b=nthyP4eYfeSgYhAjcJ9W/m2KluLE0X7YrW/E44fT/XCGp99hgR1DegcMrn0CIRcDfi
         kdj/Eg/7eTMIxNhIbcr2vArAw0dVI7evmtDzIy8SzXF41E10O3FYex6QW44rBOMBuikt
         ZLsYbW9rTNKCLg7EwGg7hNQNlpAYr4qt9jm2eGBYKVHqpAkHz5F7MbwzfNs5FU6UXMeF
         9ilaWqqXuhNfCpm0NiaVnmVIBci4q/88906e5YB7TYfOFLzgY+2A0SS822DQBGoC1QR3
         /QyAbXtLoUmQGj98e3croCIBgcbSYm34D4EAisLYHTV/HGfi1uoZtQLqX1iOlrEKRNJV
         pWdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=lUWUV2v5oTJVUGMm6xf12JUfYyiWzcefGfdAtQk2jwM=;
        b=g79M2fA6BXihAVjX4olnmY4FWw7+ZcdvhIkSGwFpeVZWMb0X9goBRRyl3XfijESUdA
         3r7lZQiNevclccyhg57CTO9R0g9GOF+4DPBvhXxDUGE0kwWJPlIfIjFbOVIbJrIS9Q0a
         nLNjXv8IMcqIxl4pCMawoE1hCJGNHwywsmH24f+zLn5PzGv7IOEku8mrz2hjficUJAAd
         ML+mkR4pFEScUWd8SFypEnNsGYlhmLfObeSdbhbwsW7kvwvjoZkKRpL2tkBdQqp4yhRw
         myM0/NSj4/mEuKMZmDa8u9UR10sPDNMgx4uphj7qCevF54/YtbTinOOog0l5W8DHzdR4
         oDSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mbKVOHJM;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id p67si832485ybg.2.2020.08.17.02.20.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id o13so7843199pgf.0
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:20:01 -0700 (PDT)
X-Received: by 2002:a62:7785:: with SMTP id s127mr10452297pfc.196.1597656000455;
        Mon, 17 Aug 2020 02:20:00 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:19:59 -0700 (PDT)
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
Subject: [PATCH 1/2] misc: ibmvmc: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:10 +0530
Message-Id: <20200817091617.28119-16-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mbKVOHJM;       spf=pass
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
 drivers/misc/ibmvmc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/ibmvmc.c b/drivers/misc/ibmvmc.c
index 2d778d0f011e..347278c1a5e4 100644
--- a/drivers/misc/ibmvmc.c
+++ b/drivers/misc/ibmvmc.c
@@ -2064,10 +2064,10 @@ static void ibmvmc_handle_crq(struct ibmvmc_crq_msg *crq,
 	}
 }
 
-static void ibmvmc_task(unsigned long data)
+static void ibmvmc_task(struct tasklet_struct *t)
 {
-	struct crq_server_adapter *adapter =
-		(struct crq_server_adapter *)data;
+	struct crq_server_adapter *adapter = from_tasklet(adapter, t,
+							  work_task);
 	struct vio_dev *vdev = to_vio_dev(adapter->dev);
 	struct ibmvmc_crq_msg *crq;
 	int done = 0;
@@ -2150,7 +2150,7 @@ static int ibmvmc_init_crq_queue(struct crq_server_adapter *adapter)
 	queue->cur = 0;
 	spin_lock_init(&queue->lock);
 
-	tasklet_init(&adapter->work_task, ibmvmc_task, (unsigned long)adapter);
+	tasklet_setup(&adapter->work_task, ibmvmc_task);
 
 	if (request_irq(vdev->irq,
 			ibmvmc_handle_event,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-16-allen.cryptic%40gmail.com.

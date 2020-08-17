Return-Path: <linux-ntb+bncBCFYTA5O7QNRBYUW5H4QKGQEPPDFQPA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C797324629E
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:18:27 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id j68sf5974222oib.15
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:18:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655906; cv=pass;
        d=google.com; s=arc-20160816;
        b=IIO0ztVAkxPz25OFdkRiwMBQ+cVZRdHMgNevcqX90NhEYTdy8ygP9VORnLPgeKfWI1
         84RRlY7i2QCAoRWy1KclqeAOT1fQv2LdXQpXUkykGfqlx7Mbzip9Aui4S7SrE8klDZL5
         cpgKtI0aoOhiOW8RzYO7o7UGsXyUK8J/MqMqVk8e/R1U8dZQaszoVcrX0jH2p1d5o0gl
         yH7kOFqIeeOVrS7a1+ML5vD+K+1aBaIHl53ZRR2tegoiRzL8OWsM4HSQUhzW1ajEpbWx
         vZzLyAYGv7IUy1AAuopfmpEWD+wgPK91JvyhwtRPwVRnhxLMYONg8YBTRK9eseCASWg0
         6IJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yuGLtwYe9XCTyLUBbRPR1mNBJjaFlisJyOaX4AQsWa0=;
        b=yhxEMpAPS2M0HpPmLHVhP9BU1oKx5vFb/UM3LBct0pu+sxGCSsmg5RLgRPmMv7AxRk
         Xdvnu4S3osTZHYOdR/GnbPM+TX2myMgOORvDtUr3H2s1bQFXFT/Ka2i3/3qPFXHfhql4
         Q19Zd9ZwHQCbHUmvL3NS1mAnsmaEvVMgWbjRThTW6LcgeF7C+nOvKfYXOidmYbijWJ+q
         WkCAYZtLWflgIuWp+BABxTqCssPbLRcBT0KRkvv81pawSXDGwd7NyauND//eAIZh0LLE
         8lDGZucc7B4y9+N8lGJGli8pJu/LO3G9a1ug9xADxc/uS48bzPY7MigwmJBKCsADYgNR
         djzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D7eDa0sT;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yuGLtwYe9XCTyLUBbRPR1mNBJjaFlisJyOaX4AQsWa0=;
        b=T9IaYdd95Saro5pNglsEm5aSZ9HSAP5iy0DVSdSh5ol7Ju4R65SIZHKKEGG41zgr+Z
         0Ve65EOKkrcJ+wJByi+dP3FAQCUWkBzGO5KwWmxOTq/HEtQnsCWCSyqVNluQF1T2+EOd
         XCLu7vR6oLiVH5FNuenczUO8B9oZOa0krKfNepUwPEcF1Pz7qXxWmSMj8xZjXjuX6bh1
         Jsxe6HpufH1cNg8ClsEfImORUpLKaSy3C0pfubDsiTjrtpHuNaAd2vjTdTN2zsnohlsb
         vqUvjwdqTQr0K0ayj1fw0ept2QxRFQ6IoZ4mLiDrq225Gh2SQLXJie7f8eIWMLpO9phi
         25ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yuGLtwYe9XCTyLUBbRPR1mNBJjaFlisJyOaX4AQsWa0=;
        b=foMWXZIjepiMdI+BeQ4M7z68IdqY8eQsaBjw3wds7gFvOddbq+MBysZp5Ucm0qMpVi
         Pj8qVCCtMm8Wgits04tuYAKY6G6G0o6phdg5rhWDK8+zn2JYXGNawBlfRNUjtv2pvcda
         gIE0jBme0eS9DfO4Eow/JINmrue4fyfzojen7RUC1V/ppzdyVMNm/zr9JFGj+WTqfhVe
         K24MfSauILP3h1FIFj+Gvgn0xi88Iow1fDukvT+Drg6BXr+TkPXCqWS/pHzC1INC/lEj
         TTndow6ACfRqw4v8q30XbPMntOud3guk/+ikoO17pL4a3U2ne2LCOdhUp2a/7xR40rIH
         E6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yuGLtwYe9XCTyLUBbRPR1mNBJjaFlisJyOaX4AQsWa0=;
        b=fSDpqSzrlgmSnEOr6dEO4jteHd827e8wT3vmVfaG9ZeQkH6doH696riNpZmRT9Ey8/
         OXXjLJnXe3s/U8VB9BqGOyE9kIPQio27DVYO5aqkFgW6qdm3kwbdR8OcDMLBV/+VF1Ew
         0e2bsR5S1gCKNd03+QyPlVmWMmhldKdeYFExclDOlQH78ywSfDXO4tcLCnB1t8XiMMT2
         oR7V0hjive0zmCESjDyRp4JQzRXuBoAChNSGalPkBDdlRcdDzg1F9KQwvHNZUjGgomYZ
         u+9p6NNeXopY4tNDcyk4gop0/xYLbia5qiq+w0i3a5aO8zBmYkhnQ7sHtLDZxgzmusCh
         bdRg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531WGsbeNFZ2rHXskETsRncGwWTrP8+Mwv90bBePTGoi1tdatUsY
	hpA0SUsB16qv5B1DXtnX3+g=
X-Google-Smtp-Source: ABdhPJzaJp+Pvn7oiJyy6gu5KBbFaeC+sU/nPOX9v5N4KurfvLyykUu3EGEoWeN0dmwgi8j4QAqvCg==
X-Received: by 2002:aca:55d6:: with SMTP id j205mr9182531oib.0.1597655906550;
        Mon, 17 Aug 2020 02:18:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:310d:: with SMTP id b13ls3430095ots.0.gmail; Mon,
 17 Aug 2020 02:18:26 -0700 (PDT)
X-Received: by 2002:a9d:7d83:: with SMTP id j3mr10573848otn.339.1597655906209;
        Mon, 17 Aug 2020 02:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655906; cv=none;
        d=google.com; s=arc-20160816;
        b=HqDfa9oZmvq11A+U8DdDeSApazx9xNsvA5iEfwve+a2/OwUcpZhzLXZJ+QX1lYoFX9
         VnBrpzXnaXiejyCUqErTrUE69uP7455NNuoBJSz5P8zt3txP8UHrXR+vIOnbDYSxsGiu
         fpzgURl5ueUVnOcOppk30UOPgo8IM7yo5EAOVfBti8otIUJJCPlwihRArtK76dO58RT3
         ejEV9Qesbz31slszOPQ2liS3sg+nXujtrc4SWJajnuL4zYv19fprDfBczf6/RvIrSywB
         J1L3LW++IT8bRFru23h73daCnuyrNwbUS4nAu6FV+aJK9murKD7CREtAjdBuZNWQBxgu
         jHQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=FQvu3zIKHcfDVUfKtSNhAC6ZzQDedEm/LuwK8bWrPeg=;
        b=mdzq2bftfyf4pcTiX4CWTyRe8e2J08mnQ15K/NnjNQFwM/a4mxIl6+SZAn7jCIx7Ep
         ELqzVXLYmyQnGbocTNvpw14wwXFn1X5BFGSky99iTqcaQ6HWPKGlVL7uMdd9bw7iDY8F
         o3+qJqpD/GHD05ZYOOSUsMe/lfl+1O37ODTEmEjeimeTDEmWISPE5nhSoqCbJmtOsMRR
         WcSF8G4/Zv6z7N9x9L1xgEsjEEgJhm9q6mOkDGvZgfgejRvH5+4Fi2NPbXTbetCvDO8X
         G0D1v6hjdmwSBgMfSHuZ69dMtGyu09Oe5pT9iYblst2lNoq/yVdo0JA16eohk9mHp+3F
         DWpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D7eDa0sT;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r64si758626oor.2.2020.08.17.02.18.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id h12so7817898pgm.7
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:18:26 -0700 (PDT)
X-Received: by 2002:aa7:8c42:: with SMTP id e2mr10326531pfd.181.1597655905521;
        Mon, 17 Aug 2020 02:18:25 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:18:24 -0700 (PDT)
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
Subject: [PATCH] drivers: vme: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:03 +0530
Message-Id: <20200817091617.28119-9-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D7eDa0sT;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::542
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
 drivers/vme/bridges/vme_fake.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/vme/bridges/vme_fake.c b/drivers/vme/bridges/vme_fake.c
index 6a1bc284f297..38dd5f949cd0 100644
--- a/drivers/vme/bridges/vme_fake.c
+++ b/drivers/vme/bridges/vme_fake.c
@@ -90,13 +90,13 @@ static struct device *vme_root;
 /*
  * Calling VME bus interrupt callback if provided.
  */
-static void fake_VIRQ_tasklet(unsigned long data)
+static void fake_VIRQ_tasklet(struct tasklet_struct *t)
 {
 	struct vme_bridge *fake_bridge;
 	struct fake_driver *bridge;
 
-	fake_bridge = (struct vme_bridge *) data;
-	bridge = fake_bridge->driver_priv;
+	bridge = from_tasklet(bridge, t, int_tasklet);
+	fake_bridge = bridge->parent;
 
 	vme_irq_handler(fake_bridge, bridge->int_level, bridge->int_statid);
 }
@@ -1098,8 +1098,7 @@ static int __init fake_init(void)
 	/* Initialize wait queues & mutual exclusion flags */
 	mutex_init(&fake_device->vme_int);
 	mutex_init(&fake_bridge->irq_mtx);
-	tasklet_init(&fake_device->int_tasklet, fake_VIRQ_tasklet,
-			(unsigned long) fake_bridge);
+	tasklet_setup(&fake_device->int_tasklet, fake_VIRQ_tasklet);
 
 	strcpy(fake_bridge->name, driver_name);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-9-allen.cryptic%40gmail.com.

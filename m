Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6VS633QKGQEBAMEBTI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 07501211E3E
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:23:24 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id v16sf7638157uar.0
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:23:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678203; cv=pass;
        d=google.com; s=arc-20160816;
        b=FyYTGxKeJh10tB4pDZeq8nWITQJaZpV1jOsRDwx/47oS4ZEIS2OOhgrdqnaQwyLT3V
         D/fIK3pRdWLm2viWYqw92bLJLFq2xymTcQebgZ4sNaANXv11U9OdSlU2I/UI/5jV51pt
         WZnTvBAqBSWXFkt9LqAeP/1ePk6USP1Ynji/A9NA++aTlACecI9DIE7LAaqfyxsGPoJ5
         dZ5+DzuWLF0oNBbdo1WYh8P9zyLEn3l8ggwHebww+XdjGjUJFuN/35DPNXo87QHo7o33
         eqSWdrMbzG+MZCbu9YOW+tvmJXghW/zIpR+7Fg25OFjyauVFpZyBg0RpaaP+HCpBLC9N
         3WgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=2jk73UIWSgKmWiG6shjyU6LBZ/ITG3lpiPfjHD4Hxb4=;
        b=Tw0iPA4+X0HkvtvzvCFkbGZQa7W/AlHxrb2XhLwFVtaLbZu7yNY3ijxpjiZ9yQKaiI
         SUAV70xl577kWN6pnVR2ndvesNSJi/2phfGEjFKZzdA5m4OZT3ThB9ljAxiNP+RHb0HL
         QpTO5CMRvItiOdXj/QFx2tObIIZ2yPX2cNf8mcxb8bqXJFK+KzBNVyVxJg9ICdm2ADad
         IMStUL7b7usX7PnyiVEAN79JWhhw52HhzxFvrUQYduWHodVqAbao5TWX9P0ERNVEJBRD
         WOJH5oDhaCVp85geZpbB8HBtY0oo4AlxJhJarHTSMgq4d2YBAak/f4kB6hlI99s2Xi2X
         lbvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hKh4Ycc0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2jk73UIWSgKmWiG6shjyU6LBZ/ITG3lpiPfjHD4Hxb4=;
        b=s6n4JzD22fVRDeNExFHGj9ifKgENWrkhqg/lSPlyBtfLakQGbEW3KK+TxozGOFUnT7
         ByFAGkh2E5PbL7AY7rutdfGy56By0xk/eCpuZbPcSyzZqbc3WRkmKvSDafktE8Jjs9Lj
         uD6jHWz0rDJBLhuT6geWT1X8O7fXtQwBFzvuwP0Vt//bgZE8+FvKlSLPsenXMC6fkzPh
         ZTs3MD0wIdwG5dO3x6nqLvURrN8wCnpPe7O0+KJ07M5tdRZVwJtbfg7O6t3++/zSa9Hs
         LbjaMZnaUHtbJHi22yOQXqny7d+ZZf4hD80Rd5e4YcjWUsHhbvm/lpp63NPrrUCOjzca
         Aaig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jk73UIWSgKmWiG6shjyU6LBZ/ITG3lpiPfjHD4Hxb4=;
        b=FSsgmUe4tIF4qiPLyXo1Fyz/hGPPbOFvMCw/nMlIZ6sNnQpcYkWMKTNClZW+7Umbhk
         iaP4SuFzn6phJbnBFdqI8s+ejVWaICFJek90/RS6h15U8k5JwBCm0q2aRiFSRSZx/6xg
         L7d7QoTRY3hobTjPWu7x8Vz9z+BrWUFjkYrSkN9oyKw6hUAXdEEMk2Qf9CYzjnF5H8TV
         FhEltJQLzyw5ftOTqPHTOSh9vFqU+VS2DAaVgMI3at1uynHScC8GrMSQAD76L9Jb0Hfq
         FIdOfXuiw12LfHWAurWFbvv7hUiKK7crqlFlqJYkawXMlYzxaVqtrqaIUaB5XxXoVEpM
         HGAA==
X-Gm-Message-State: AOAM530G4pPX87NdwRkIb30UkvCtxB2R74JOup1Yv5E7giyhJrVxuOP9
	8KOrMZPSsj2JPv1cPJtnMQ4=
X-Google-Smtp-Source: ABdhPJwl6z7Llihr8ODRZ+FjZejVn/Yt8yu9O0kdskNrVxQD7pg3RCip52TKcD//AZCPq/KoZm64sQ==
X-Received: by 2002:a67:ea18:: with SMTP id g24mr22094338vso.107.1593678202953;
        Thu, 02 Jul 2020 01:23:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:1a81:: with SMTP id a123ls289292vka.4.gmail; Thu, 02 Jul
 2020 01:23:22 -0700 (PDT)
X-Received: by 2002:a1f:255:: with SMTP id 82mr21881855vkc.39.1593678202667;
        Thu, 02 Jul 2020 01:23:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678202; cv=none;
        d=google.com; s=arc-20160816;
        b=kz6JfsV1Av1gY4U8sls7YdIJgasXiVAMsbSFzBjnqz1qwcQbOVMRLMb8oF3emP9HsR
         GimwpTNoNnBQbgQIIGqYenAyhK5fsDr54yy2NXvVmhgmshd1RErZb/V+ZYyuMMo29UjU
         8Fvbm4WvE3NOfGV4kWKqdA/6Id+5LZAYlQ8WDoOMNZSOdOdSLz9suUDn1e9LvhfSFEd/
         1bO619kqjkT6uCaKok+BYEGh/nMe+zNYW8b4uOfr/m8nDE7LL6KNWZ0L7aaybd70WCwn
         TDDzCOLdhdFIPJNcaURU7i2jwJuc2dEZXGYc4xKe2W/6FMyuY3Irf45zQpCsYy60iB0Q
         hnwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z96ye//Mg15JHZ1ndtZxlE33lV8uirQIl1DtUAPpCNk=;
        b=kY0f/ckP8m+x1+k7ZCJT73hU6ixNCgQf+6DBpaCUXaJ2q0e33KxbyYfJYEzhTp4ax2
         b3OZpxALc/S7XJAYzbGss1vqIdbWR8L8C+/4ozfjR7GLiqpWAOFovca7Q76u8BXlj3OT
         011hBQ+tFGmC47F8GULlcEH87Nf81gJwLmxjKMpYR4Hdfm6HHZ2AWHzWT3UhwKYH85VK
         XAJFT05uu2X7B/t4xe2BVexCQBGxomancePpt2mq/2aVgzwnkHxeq+ooyUIk097oR2Dj
         zEV8S2n/yMTR88OfmmCbrNCljGKwc1pEXhzwOLOYojSazcJIp6tuRlEDpU3uWMeeTLWT
         mtuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hKh4Ycc0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id s7si7357vsm.0.2020.07.02.01.23.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628NGhc082008;
	Thu, 2 Jul 2020 03:23:16 -0500
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628NFj5066600
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:23:15 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:23:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:23:15 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYR006145;
	Thu, 2 Jul 2020 03:23:10 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Michael S.
 Tsirkin" <mst@redhat.com>,
        Jason Wang <jasowang@redhat.com>, Paolo Bonzini
	<pbonzini@redhat.com>,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Stefano
 Garzarella <sgarzare@redhat.com>
CC: <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-remoteproc@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <linux-pci@vger.kernel.org>, <kvm@vger.kernel.org>,
        <virtualization@lists.linux-foundation.org>, <netdev@vger.kernel.org>
Subject: [RFC PATCH 15/22] samples/rpmsg: Setup delayed work to send message
Date: Thu, 2 Jul 2020 13:51:36 +0530
Message-ID: <20200702082143.25259-16-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=hKh4Ycc0;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Let us not send any message to the remote processor before
announce_create() callback has been invoked. Since announce_create() is
only invoked after ->probe() is completed, setup delayed work to start
sending message to the remote processor.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 samples/rpmsg/rpmsg_client_sample.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/samples/rpmsg/rpmsg_client_sample.c b/samples/rpmsg/rpmsg_client_sample.c
index ae5081662283..514a51945d69 100644
--- a/samples/rpmsg/rpmsg_client_sample.c
+++ b/samples/rpmsg/rpmsg_client_sample.c
@@ -20,6 +20,8 @@ module_param(count, int, 0644);
 
 struct instance_data {
 	int rx_count;
+	struct delayed_work send_msg_work;
+	struct rpmsg_device *rpdev;
 };
 
 static int rpmsg_sample_cb(struct rpmsg_device *rpdev, void *data, int len,
@@ -48,9 +50,21 @@ static int rpmsg_sample_cb(struct rpmsg_device *rpdev, void *data, int len,
 	return 0;
 }
 
-static int rpmsg_sample_probe(struct rpmsg_device *rpdev)
+static void rpmsg_sample_send_msg_work(struct work_struct *work)
 {
+	struct instance_data *idata = container_of(work, struct instance_data,
+						   send_msg_work.work);
+	struct rpmsg_device *rpdev = idata->rpdev;
 	int ret;
+
+	/* send a message to our remote processor */
+	ret = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
+	if (ret)
+		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", ret);
+}
+
+static int rpmsg_sample_probe(struct rpmsg_device *rpdev)
+{
 	struct instance_data *idata;
 
 	dev_info(&rpdev->dev, "new channel: 0x%x -> 0x%x!\n",
@@ -62,18 +76,18 @@ static int rpmsg_sample_probe(struct rpmsg_device *rpdev)
 
 	dev_set_drvdata(&rpdev->dev, idata);
 
-	/* send a message to our remote processor */
-	ret = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
-	if (ret) {
-		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", ret);
-		return ret;
-	}
+	idata->rpdev = rpdev;
+	INIT_DELAYED_WORK(&idata->send_msg_work, rpmsg_sample_send_msg_work);
+	schedule_delayed_work(&idata->send_msg_work, msecs_to_jiffies(500));
 
 	return 0;
 }
 
 static void rpmsg_sample_remove(struct rpmsg_device *rpdev)
 {
+	struct instance_data *idata = dev_get_drvdata(&rpdev->dev);
+
+	cancel_delayed_work_sync(&idata->send_msg_work);
 	dev_info(&rpdev->dev, "rpmsg sample client driver is removed\n");
 }
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-16-kishon%40ti.com.

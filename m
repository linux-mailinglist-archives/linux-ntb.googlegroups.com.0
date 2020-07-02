Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7VS633QKGQEEAUEPFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9CA211E40
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:23:27 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id h75sf2217501pfe.23
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:23:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678206; cv=pass;
        d=google.com; s=arc-20160816;
        b=fPsf/UKlLJhRVBdpCPsQWCFTjJkGIYDVU07u96PkaMQ13Hi+SQC/3Tx5DHCNxsNQNC
         2qm3fXUgRtNDCEMLy3+Mc6VbtXxzMmwJkBhlUrnTuecmbaJVt6qVqq6gSCdGbDINjwds
         DZPn/XttouXDgCcy3Bej3jfxpokutmd+ru5VLYrK4rrlrcPLx1mOk8cIRE4zLTtqR/qg
         Cp8/HiPspcXb1t5qNo7e/IpSDhW7mGdTHlivttd+q2hJ1EB903GLC/+3+9emn/uqXT3G
         578D8ot+YF89U4lB8MXDFdPtZ2TMXf48vvfjgtJ/C4A6xYlCzHUxoN6/1GJsPK+R7iWb
         RoUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=hdf8DLdtojT9/jlLe38bKYvCYjWy0AMjPgeXaV6MBLY=;
        b=0GMfr5MMl1PaB91+yYhTNXBT0fP+NF+TQehqJzkjrNrwgBOb3Zm+/G9tjSQfD4xHBR
         +9hOv48cykZdlazaOZXxh+VyvNzDau58+zGajW7GPIVEOm7PwSqVlLF/351L6tmUauw2
         K4UxU49ZnM8NmroU2sosw9po2VBccydfsClONtgkdzlVu3iJ0twY9gULSo+s8IjX9K1M
         BO1EccVkhqHD3GnqJCg2xr3f4LDZbcimkisVKY27FryPN2qU073mxT06TpOrZJVJP1F7
         6ZR1OhimUarWYqHDk5NdW54ymdWXU9BrdISJjEA/wlShQS69oUweO+y8PvIzmhaauHbF
         Lq2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="HEU/4DXs";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hdf8DLdtojT9/jlLe38bKYvCYjWy0AMjPgeXaV6MBLY=;
        b=iOPCY5fFugodZ6rDLhSHiU9IgkMuHaqIKRvOTX06oXpK87N0BTD4b3tcDHRBnMs7uA
         VFEdNxSwC1MHdn5g6t78d4+cMBfCwf/TD4kAPCP0PKViNyH5TgyCDEV/ikpHfGnF+qkM
         E7lupnzM2PF1WEH3qoGNua47K6nwqyCoyHe3/4kDg8t5pYO5eupnDPYVaizgt5+YVBSx
         RB4Fj4vMVJOCilcWzur9eEn4FtiokIOKaJ69clYWTMYVXVrR4Zx25CWnZD/tDTOTsNUr
         iQGgewQS33hNP9o6OviMNFRLlUC+liZYNHAVKHdo7y+JIFdI6Q0c/YtA1WyuqNwNyTkq
         PbVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hdf8DLdtojT9/jlLe38bKYvCYjWy0AMjPgeXaV6MBLY=;
        b=f4oAgo9oMRWrJ/s6m504o0WI49HY45VRmRSEnak74yUl1yIPA9jrZV/Eox006bEY2k
         3/j1HzFAAIxbx+FWXyKm2gf6gijhaFMqvMgVAmck1gpLpUHKaSIhlasPxxhIGK7kK3e6
         g84wC5mpF3X8DBonsgBmkNEcNh+KWdSXBmCdhJIXNPF9xNkY+AaJvPNRL2dn/nERDQvD
         cmYhqQkuAjVGFJHKGIhuiClDCAR3Jq0ZQ4/7A/v0BlC3Q7ARmzuTNDOxz2pyBfbkXAAV
         hWD/xQYtvGzID+gS89H2Z1ot1MJQZGhXRsIkCDaXWHTIA3rcrYxDPu5j7UUcSAaww2j2
         vZ1w==
X-Gm-Message-State: AOAM532dMUCSpoG7untfrFIDwOozHmwUIc5jHZ6rqu0mo7ExWqrfXnn4
	l7tUjd2EytVQM9cS9R2HcEc=
X-Google-Smtp-Source: ABdhPJxqSuMsuCBNpi/0xkzXMxEH9HmIdgKBpCDjghqWfqCx7ySNNxyOstVVYgQLQUeHEoyIF9SWDw==
X-Received: by 2002:a17:90a:304:: with SMTP id 4mr31044952pje.219.1593678206138;
        Thu, 02 Jul 2020 01:23:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b60d:: with SMTP id b13ls1986924pls.11.gmail; Thu,
 02 Jul 2020 01:23:25 -0700 (PDT)
X-Received: by 2002:a17:90a:2b8f:: with SMTP id u15mr29372750pjd.98.1593678205843;
        Thu, 02 Jul 2020 01:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678205; cv=none;
        d=google.com; s=arc-20160816;
        b=fKOoXhIUVRY0PVZ+6o9n6xV3oWZf07vCDSVhcN9WiIzykdpnnHFkvqMNNoKCqO7TMA
         P4gsnrQNizNJZzNV7gJSGS2Y5L3IgUo+kqfC+zhdAr7U0diGJBgD226IXZsZ6JQAO1Ez
         a/iCYq/rE6Hn3zu4UsOx8/NFKKMjjInDEfKMkja87gI+F+RDIB1VSUMwOFJdUQIDNm4F
         CWZgQ3DZpCddGAqRr8FmkqyHpSCjSMZdcxriCXj/yflWbrn7S3CPuXreb5zGFQw/9max
         xGgeismvwCB/6BSCWINGaQ+y/34ugBQ/dR+6kj5FoYivGr1tOrFSv94HazHdJwq/QkLh
         c9Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=ogem8OEd0B1KK4dvO1xOb9/ggBhFiU5Os5ncLUubhLU=;
        b=LXrdDUpXKIDqKNceNDSrB5tmaPzyHi0ld6vRgVDEWpF3d6ODu4c3pFywdnj1WdwNFH
         hGKspnCt2RxNqhRptRA2rHU7kIQIXe6zE/qXYpHC2ABK+D7kOiU/Y75yttwK+TnXppJh
         O7Zu6nqz2/L8WslBFqrIfeVzFwegReFrzU4FM5CAW8gzryVAFHxy7yG54SAP6WKGS6PF
         YhqaxkmYJSRxqqwenXcXLGai2Fw+2jdXCJsCXr/NvMJeSsQ3aL+hOxE6X6ix7i5N3c4d
         IJCVDrtDnUY10tuppbXmZfcP5iGnF0vqIPiqeXdtoNNTTlWkIDOve5wWnLIupDUgKwWo
         R4yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="HEU/4DXs";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id d16si432415pgk.2.2020.07.02.01.23.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628NL3E082026;
	Thu, 2 Jul 2020 03:23:21 -0500
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628NLlT067307
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:23:21 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:23:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:23:21 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYS006145;
	Thu, 2 Jul 2020 03:23:15 -0500
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
Subject: [RFC PATCH 16/22] samples/rpmsg: Wait for address to be bound to rpdev for sending message
Date: Thu, 2 Jul 2020 13:51:37 +0530
Message-ID: <20200702082143.25259-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="HEU/4DXs";       spf=pass
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

rpmsg_client_sample can use either virtio_rpmsg_bus or vhost_rpmsg_bus
to send messages. In the case of vhost_rpmsg_bus, the destination
address of rpdev will be assigned only after receiving address service
notification from the remote virtio_rpmsg_bus. Wait for address to be
bound to rpdev (rpmsg_client_sample running in vhost system) before
sending messages to the remote virtio_rpmsg_bus.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 samples/rpmsg/rpmsg_client_sample.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/samples/rpmsg/rpmsg_client_sample.c b/samples/rpmsg/rpmsg_client_sample.c
index 514a51945d69..07149d7fbd0c 100644
--- a/samples/rpmsg/rpmsg_client_sample.c
+++ b/samples/rpmsg/rpmsg_client_sample.c
@@ -57,10 +57,14 @@ static void rpmsg_sample_send_msg_work(struct work_struct *work)
 	struct rpmsg_device *rpdev = idata->rpdev;
 	int ret;
 
-	/* send a message to our remote processor */
-	ret = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
-	if (ret)
-		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", ret);
+	if (rpdev->dst != RPMSG_ADDR_ANY) {
+		/* send a message to our remote processor */
+		ret = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
+		if (ret)
+			dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", ret);
+	} else {
+		schedule_delayed_work(&idata->send_msg_work, msecs_to_jiffies(50));
+	}
 }
 
 static int rpmsg_sample_probe(struct rpmsg_device *rpdev)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-17-kishon%40ti.com.

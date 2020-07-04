Return-Path: <linux-ntb+bncBDV2D5O34IDRBVPW773QKGQEHZ6BMAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id C558E214360
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:25 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id 201sf11197526lff.18
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834325; cv=pass;
        d=google.com; s=arc-20160816;
        b=UU7skuPIPqNu8Dd7nd/7sOAfOPXa+3K5F6EtiX+sUNeLjcfWHzPmZKPtOM3Mm5hgOs
         hthMIhAFT9frr1KqjaRwnlqJ3Cne7paDbCOv3+oNcleSmSKpSstp7cYUO0s+esNIZjVX
         HUWPrnVFHSd2ewVB6pCPzDzUenDQxugAZCXgEwwfLiYWxOILABTF2ptKF5TpjLI8Yrzr
         jFHDNDi4FaddaDrEM7seOziBS7FZqEmqKIKJHR2xXqvSUQp8zvJz6xtUCTvBxkyWceat
         fLWA1ZGQjPXmsuFOI28lSdrqospALVepFSUKp9GhlRrTy6Xsx0jZybGoJBBPfqouoQkk
         CLFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JLXWk7v0SLLuzdCwcDFZse/jrgp4pXqU1rapj3En+0U=;
        b=CH8JfRnCHaBDCROSQ9KPNqosqmwgkYbhob2KMis60SW3/X/OCV2jO94Y8s/KZ9EJCb
         uUzRXyN4W4aMGA596j1eyRNrP1NnOKJv9g5VR15dUdmJFrcRF6zBnlpEs9BgnfZzZMGh
         H58wxqY06NOSJHlwJ4XZOEz9/q7oJDNx+bMQbbN8u9A3MqDcQx622F2IWHDKJbkBP4V6
         HvDZ6yPUtUuojYWoswNIitvA2TlEhRyjxEqkMmGSUIz2Zuqk/eqrRivAncEypWnNIRIN
         EVJtX99olB6s9mmQ9/O74LurjLnL8QaqcKH9KTseVMJ4shu76Glv0Mirf41G1YyP5jEo
         RBUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=FwLC48ir;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JLXWk7v0SLLuzdCwcDFZse/jrgp4pXqU1rapj3En+0U=;
        b=IscBf6VOhwbb12bjOLp+6CgTAQghknKNs/pF1DSQmynJOz64gXfbGHBqmhtVBTLVRq
         6E1W8puorv+MbMxLkeXb7me+GTJV7/E4ZpihgzV7SOLjcT7hljDtupWEJHNk99QuzP8X
         jW136uynUuu11q06OoQRamJ9mefGU3nxG4RG7KmfllQE7UC0GwwzVNq7FBPBeSMUaIef
         cZXeIxPyrU194+YooNIg9SEWPBnEWbO9iXLvOg0YS0lXUG+L7Speyqe8XhWkav5qrMh+
         lP9W8Me0f+M5R3jT9zCDiE/RYABi95Xb8m4b8VfzjVkW9/x6yCnTCNMLvTj14L6CuqH8
         gYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JLXWk7v0SLLuzdCwcDFZse/jrgp4pXqU1rapj3En+0U=;
        b=SlwW57Dy90vkObCG3znQIk1cpqg4Vt9RNMKjJgAHr2WgAJAUMq0VXRV29TP88/Fh9i
         Z5M2zz1LgZm/BIdZeNYRhVWEpqhOu1D02fDhBmRm/XysEYO8CLWaZZevPXBtczQTYFUa
         DMtS2VR2icyhj4vXTikprqguRabzwlcydrw/4yZyPD9zYjXu+cVUEGEKQINrrzxWK+oc
         vF+OaWeBpICec/Gdp+VE1pPuDZq9ViV+ulOtksB7w5QJN8qCOBgYW8m8eWPZ6slkZKS8
         d74fUp5lgfoaGczu/u2SSN7pBECtmZDW7WtsQ23JropWnIEO+sKPF5KI4rytnEzddTDp
         hmNw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532FusEa8I1Y07417/QYbbKd4zdFGl7hLnoGpcs5LJv7r1cLNjB4
	UupwoMtVkie+LvbNDLCcAwk=
X-Google-Smtp-Source: ABdhPJwZanpcPH/drQXA/9JgNVm+LYkAr9NrtjRlqeTbNN8abnnwZR/MCZXONAZdcWq0zt0hUCejDQ==
X-Received: by 2002:a19:806:: with SMTP id 6mr23453843lfi.171.1593834325360;
        Fri, 03 Jul 2020 20:45:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8592:: with SMTP id b18ls275612lji.0.gmail; Fri, 03 Jul
 2020 20:45:25 -0700 (PDT)
X-Received: by 2002:a2e:9a0f:: with SMTP id o15mr22179978lji.450.1593834325019;
        Fri, 03 Jul 2020 20:45:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834325; cv=none;
        d=google.com; s=arc-20160816;
        b=tr57QkdH02X7Qf+ngOE8xDhXpSjObCD8gin0fQ0uLJRApDVZHXYzL0BSDlJCb34QgO
         +d3gPm5iyw3tHqPGrsy/gRrS1mnXKvF3AYOVFooEmo458lQCHhHeBkCNKJfymh8Fkdue
         j2/0fZyVAgSKUVk5VYuPGjUI6lXRGUg2AKOBWq9PR2wlseI+rTJwU6cOjgGc6vNC2rYG
         L6RNcmq/c9JMVhAAM87tcjlSQUvVVxUZsn9LwTAs64ocNDk4rQumYn+N45pBl6Osx28s
         XBOU9va703nB8v7iEd24m5HK5TQ1KI8P+CZ6lBZ2Oo3KNbS+I6Laogb88yfP+rQZQ1vk
         IkMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ch5Vnnhpkqkrccfr8vk7v05NfE6XsFtcOu+GJkyQHBU=;
        b=AmI5ItpMRG1BXzURe3xZgR62JyuybPcwi9wOLxAHTDzNcHY7Piy3b33RvA7Of86RBJ
         28cDuDMArdSXPZ9XUZeof76WenkjeYIN93cT3CoXeMGI5XYYlCkIFNAXgNbEDbjc2IbS
         98ernY83bIKVXV9UjPlvjvUMd2swr6aQ39pb0DDyEgQ7nrNyzicIwU/fJ4jkNJlYbdtN
         UfDM69TeTy8fKvaDwcc/34s0bT4sgKZinYEErQLHIKDyXoctsASN8qAprgAeRUdbbvbR
         tyZri0JCEMmzb0v/YlV2L41jceia1GEi8m/ftrsVA9xPz/Qv760nPdg9MqU8lUtTDQHo
         JeNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=FwLC48ir;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i66si361036lji.4.2020.07.03.20.45.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ78-0001Xb-6f; Sat, 04 Jul 2020 03:45:19 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org,
	Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com,
	Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	linux-nvdimm@lists.01.org,
	linux-usb@vger.kernel.org,
	Eli Billauer <eli.billauer@gmail.com>
Subject: [PATCH 02/17] Documentation/driver-api: firmware/built-in-fw: drop doubled word
Date: Fri,  3 Jul 2020 20:44:47 -0700
Message-Id: <20200704034502.17199-3-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=FwLC48ir;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

Drop the doubled word "for".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Luis Chamberlain <mcgrof@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/driver-api/firmware/built-in-fw.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/firmware/built-in-fw.rst
+++ linux-next-20200701/Documentation/driver-api/firmware/built-in-fw.rst
@@ -28,6 +28,6 @@ able to make use of built-in firmware:
 * Some firmware files may be really large in size. The remote-proc subsystem
   is an example subsystem which deals with these sorts of firmware
 * The firmware may need to be scraped out from some device specific location
-  dynamically, an example is calibration data for for some WiFi chipsets. This
+  dynamically, an example is calibration data for some WiFi chipsets. This
   calibration data can be unique per sold device.
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-3-rdunlap%40infradead.org.

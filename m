Return-Path: <linux-ntb+bncBDV2D5O34IDRBZPW773QKGQEUJQFR3A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E455D214365
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:41 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id j16sf29156788wrw.3
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834341; cv=pass;
        d=google.com; s=arc-20160816;
        b=JYTFx6cl9Ja/Ty7vNv2qSWh9+DSDWnyr//+2ZsawGef3HiEh+BNoVSoz5nlS50Lmvu
         zk4VqgmFndL+FDIWHuHKfvXrwg/BS5vSPm1/xNWwAy9sWmz6iz7tB4gZa/vOTNrADiyQ
         xbPVEhgRgYLy/yUBQmNxGMdcOEWU11BtCpOtK4duikr7M26KTnOF4e8VS0gnUs7tdWlR
         f3fLi1CIpkT+gwPGlmJTH0Wwl37PuZpcGOyb6UxaXzxhHwRmQ6UqCLHCjmaxzyD4nIjh
         I0OA3+aeyH984X8vuvcDxolKIqFkakJOblfxIqSC4Cj7eGwzUmJJt5Ead1MsKadTVXw6
         ITEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5my11hzZf76vDgnmJM2ze9xjxazlqex97+SMcJbsZqo=;
        b=MtbcYoaCeCnoIo8QbpBGR4p6cuEOtJRNO79hHOXf+8FnNUXsW2fKPbBjk0wMUw+lHo
         rOI6lSZ7N2oJiaxB+xTLxaLqvddw5S11Trt/K1kTueorp3NALDPfOJ0qcVfHvXtv3qpT
         pUOm2lWi5Xh6WUL2KZhF+5LgqdO7aGvyww5jSA6UmBZT1GGJ15UBfcETSwzel82qM+up
         lyWn5N/NksDz91sxc3PzaLPN1XBWboGFrdQrI60JBkqJ7KptqSsInpf2BW7VSKGhu5S2
         8BqpCYuKSg5YbxVaHRHdpIN056CORgF+17fi72EAvCrUFPshVjk2TuBMg+19AVfl3Emq
         4Zcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Tcd3aFlN;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5my11hzZf76vDgnmJM2ze9xjxazlqex97+SMcJbsZqo=;
        b=Jwcl1t1W9/aDx0UAChPZiuG/zZP4PV+xYYNPsKZm0ueOurr/sMXTO4NC1WcIcFF+iT
         bkzNyWaIczhUpFMvJpvqUQ+rkgBJpO6nU2mpH1p9Dqmn2Rm3N5s163/2GRRCndxUIH7f
         R/mmf8vODsVBP4BaIf58hgvxCaEhIqWIuDIO6N309HwG+WVZTe8iDsRWtJWMnXcAEpSC
         NyWCyxDD2LqIn5wGP4/wnxUoZfEbgolu9k/EtFkxjK7EJTYb1Z1T26Wd/34e+gTVnAK8
         2XLsxUNEHpEuOvT9kM4l0n5qxYpy30sTf5XneqToKYKArb/nWVYcrOTzIMzxOXfhywFT
         pBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5my11hzZf76vDgnmJM2ze9xjxazlqex97+SMcJbsZqo=;
        b=bgJfdJc/V2uIPRhe6bB+t6XRel4pG5sgOdin/Yw26Gf8cyaBYVN3cKvqInR13YNooB
         zVdz46jlSYHHGKUExe4sUYd8IhrJkZPaw14kuiyjc64/al/atpeBXYSAmJ2eDYynvrdj
         f5F41MS2v7JinEPEt/hF9zaCQ0VPewuT8CSE93Fo9YlPJjj40lHAWC19VkZ9g2oeBwmY
         DbITlTS8YOkA1LneJyA3dojjw5YcxITqzm28SGiZEnLORdGkqV+xf01FluQBbM2QE4fF
         DpwU9KAsUeATvyR+en+npSyABF0So5LWuMEpP9I70bh+h0fUxbGrfWccCc9TNOjZOVlX
         SGJw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53353HutO9Ljmp735a7jud5oQLVTwUoUqS0JUzeti3m1GQ21Drr9
	gGJFhHbjDQVuyVXgKNuI67w=
X-Google-Smtp-Source: ABdhPJxMogLZAwqW52/eolABMABc9EtpncPq7TiiobGLO3dzISi8+CC6NplrR4DQKQJTKyQZLpNe6A==
X-Received: by 2002:adf:fcc5:: with SMTP id f5mr43562269wrs.60.1593834341718;
        Fri, 03 Jul 2020 20:45:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:7311:: with SMTP id d17ls5525828wmb.0.canary-gmail; Fri,
 03 Jul 2020 20:45:41 -0700 (PDT)
X-Received: by 2002:a1c:96c5:: with SMTP id y188mr8190483wmd.71.1593834341325;
        Fri, 03 Jul 2020 20:45:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834341; cv=none;
        d=google.com; s=arc-20160816;
        b=uv5VHWCdDqxYsCVWVsMlB2L4c8r7RFS/eEqeMeEVVRiDdaReTW1xl/Bjqr4RdGc95E
         iwLWKWvh6pdkZV09fBVabgsGjdwWQ8hJpaBP0mqxghi2dEuwHv2DO5vQGm7ILUmJaG7K
         0RTPzQuDei8OMwm5Rcd93RL4En7vmkkHh4ziEVdZmUH3Gy8ibLCrKM/NYQ6Otvo9zNgh
         mUGgK6SQQb7TWKiW042xKxU+gA0KivPZL11/c3V14xhPrarugjFjf5AtDhFG1oY2z8iR
         iFb76xI+DkXHRCuE2kvEppFB5Ew+3tWK0VJ7Aqfe6FIIGG6n14ZRWBVMMJxC90syTiBo
         JQKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=azvx83xWOF3kgC3cI2uK3xiDXooMGlcuFMVIJEx/1Lo=;
        b=oJDOsWMhq0GgngiXr41Zq92Uab8eoN6yQJBtgja0cLjgtqHRzcAv87mT3J/nhJbOQZ
         moe4+zoYh/yCVWUNmph5rWYnvaxG+hsX7/Y3AjIYOYjDpbiFnyjxkcDSaKx18fkG5gtv
         Trky3R/K4CklR5cXC3qq4eeOmEfO7/VkExBjCy2YhZiEZL2gchUJrJHCto3VDT6lRBQe
         y+asgwqn/x8c3IK8IuKVUyyFGwjtVnxPACKVjE+brb4MXP2Ivo/804wITfrqc3QV25TM
         FJQJt4pQ7Nx5fA+VFKE5vYuwnFW+RgK2hxp0ByM2w5+4cd/ooRnXAACCwzlIjW2YnNp1
         3aYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Tcd3aFlN;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id g14si1708340wmh.3.2020.07.03.20.45.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7P-0001Xb-73; Sat, 04 Jul 2020 03:45:36 +0000
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
Subject: [PATCH 05/17] Documentation/driver-api: firmware/request_firmware: drop doubled word
Date: Fri,  3 Jul 2020 20:44:50 -0700
Message-Id: <20200704034502.17199-6-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Tcd3aFlN;
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

Drop the doubled word "call".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Luis Chamberlain <mcgrof@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/driver-api/firmware/request_firmware.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/firmware/request_firmware.rst
+++ linux-next-20200701/Documentation/driver-api/firmware/request_firmware.rst
@@ -76,5 +76,5 @@ firmware. For example if you used reques
 the driver has the firmware image accessible in fw_entry->{data,size}.
 If something went wrong request_firmware() returns non-zero and fw_entry
 is set to NULL. Once your driver is done with processing the firmware it
-can call call release_firmware(fw_entry) to release the firmware image
+can call release_firmware(fw_entry) to release the firmware image
 and any related resource.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-6-rdunlap%40infradead.org.

Return-Path: <linux-ntb+bncBDV2D5O34IDRBBXX773QKGQE65C6SBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A71A214390
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:15 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id b9sf23928989lfq.21
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834374; cv=pass;
        d=google.com; s=arc-20160816;
        b=EtlniRq8US1zngSOaiTjwRAkOjdxnBxlWs0AgWR0YiQ325sjULmv4nZBqANQf/hW8n
         1gN19G28Hh5SoeGLj0VMW75Ltk/oZW1fAv/ZzLBEscBdI2bcOBTT9661IVf6/7S1I71C
         j+pBeHU+PcO6ME9PcoFaRx1HVbzLJWQb3ff57mRSHIojWSI0gqtUJ7RY3nw4TunFrO7y
         kIDEUJMxYrFYl7LfyncIiqjizD5DXSu/clhVeDcGz4DWQ95ddoVepo66SCI4VKKrhNC3
         zD8j2fi57uHK8COo/da/sCaCCG1yPlvT0+oJydxs3DSCOF3/4Bb4YSfIJx8Xrqhqq82g
         oOlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JkFqrBEFKGiYczimpHK1A6XTb5HZOhl8QVRI5G7slgc=;
        b=Uu2mhuwbkzgSfISeHjTnBvTn5Sd0KM6MnYoj3bxa7N83L98Gi8UNrBdKwzW/44M+q4
         pnNi43/yxUzpW4CrMjVLPinzZQZMz9hum/o3oP0Adxf8uMrDoHtv7aM2o2DDOw50SVkd
         ePW+Cz7BzBI8rFbk6+NBmQcjcPh/2btTaKRYD1cRztnpHJKTJPbK3R7yCkIsQIrno8jk
         O0CESRgxp8Tf9Ec/5Zf1AUuFOOSz38yxip4Spm0eLSikKMwZUQR3QuMgWmtgEWcvPg0i
         WLmEPwxg6rI5jE0WBkd71gGnFV74SzikNeSUX96/OvU7n7CX+sRm7kgY44HVEMp4qsDI
         EV/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Ba1zfCJU;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JkFqrBEFKGiYczimpHK1A6XTb5HZOhl8QVRI5G7slgc=;
        b=kl46jD7D8kkjqJyH9aSkcNMptPk2awAB7G4pKMrymhAWcGuU9leXASJE4b1OIsVEDi
         AP8kkUAiXbZ7CGRZRjR1theOSain+5K46zlXpzDXpcCwOorMPBbkXJs8YSSvCH0GcuR/
         eexlWZI+Hp7n6NYlgGkAsBQYZI1+tVk7zdb2ZDxQiajNAbX9Ai6pH1gBnG6sbpuhq5om
         A8ccFgPG+SxJfOHsvX8W0+5Cc0QQ81l58Vrs10BYyUSYzvi7s97ic4F9gzhFJmJO3Etb
         35O3ct3gy7wQ2k8Zi4PR0tw/O0z9AJ2w68OfOlHxpnEh5gOoGFAhdZFI31eDI4IcI81v
         wvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JkFqrBEFKGiYczimpHK1A6XTb5HZOhl8QVRI5G7slgc=;
        b=BA46416NIg/9ArivItTL7RWKAAmZaaOVoxXcsq0KARmmHIEopgpsebPl/wvfP3GpoK
         Nml6LmrXTTQt6HrFJZU6iTJM20OR9NnCZSMop2rX6LHwFm7CrGIRPEsvYWWyAWLSK+wK
         jsT/gnslTdU9ChCSZsjTy6jPuuvkktTVSVCIHH1yacdP6K/gvxqAMpDMzUxEfBk/2eYY
         iGpAFQ//9pw3s3pkfGrFQwtWsij1HSBld2SfQKitgm3/oQlGnyoMKPIECOxOn5/8+tiO
         PK0SqI7WmeVWlMT8WbliR0cKEkNwvWgBIdQEUskQ+lfQAnx3w99y885dCopiR1MQKeOM
         sULA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531iJwibLis/vOPbS2eLcZYkLAZ+CTOzwoWT3SgiZkwzfFmFb3kG
	NIpm76DzPcJltpKmG8Wi248=
X-Google-Smtp-Source: ABdhPJzMqEf+mfRav3BkUMcJA13kqJ7g0ZB2P6gX7VHFbm8YeTCtY5V8jRUmuoHRBk39ikJeycUHJw==
X-Received: by 2002:a2e:9c8e:: with SMTP id x14mr13981017lji.451.1593834374764;
        Fri, 03 Jul 2020 20:46:14 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:81c4:: with SMTP id s4ls276383ljg.10.gmail; Fri, 03 Jul
 2020 20:46:14 -0700 (PDT)
X-Received: by 2002:a2e:b55c:: with SMTP id a28mr17417954ljn.42.1593834374217;
        Fri, 03 Jul 2020 20:46:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834374; cv=none;
        d=google.com; s=arc-20160816;
        b=CIFevw8+7lcjZG4336rQIbivVQ+d3RlK9WE1vhgp//flAiuEE96B3F/2zO8g/DjWRO
         sTIEzqCRJqq+hctYrX6tc/aTx8wRIP9EqCDnlvzZTDlD+7DHTB7M61Iiim8wVi20CGyu
         +Sf56hL7/3g/IyxnUv51x3gEsjUdtwotHuEXTlZ1zjroIzwYCuSXRBMRHyJbkYQ4dFzQ
         odK37VlPBLMJ41ezisJAAAgsneNfEfN7O3gEpZuwLoC5mABEVPEtAb367fkWaJXgC6yq
         ZCfzZJWQM7cGLeBtx7XuQ/5SvXmv7o2IptLDUjJAZ0R5yC49+1yKobD3C8zofp3dyE49
         NAKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/CGMiPAz1EqlmAsuqBAdyktP4CyuJQt8tuDtDyXNR6Y=;
        b=EGf1T67DXHAwl0MI5vWa5D/uGzFX1mItiMsI6mPuldCmDy3WZyWQ4wrEvHo7MlxYMO
         3vcmIAQZkp2gVCLX5/tVBaZHVd+N7IfaYt2AklpsLaTclMqMRSHdppfmMTWbYrvCFYr3
         KoWgGPkZWbhsfJUM7gkvzbjlL1p1YeyCixVVXB2AA6vz88XWJqxTG9oKl8iSaGb631iB
         FJQzSUarJw0jc2khrZ+nnQb2Xu45nFhQcVsgiTgX6NFpMqW3on07sHmDjSWIbl6BCjBI
         ESFf0Jwf1hk3kRyLc319E7Pp8SoONSyWM/Oetz1xLqjv1uUiTOOKfL0/LZBb6xUUwkjP
         cOkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Ba1zfCJU;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id y2si814272lfe.2.2020.07.03.20.46.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:14 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7v-0001Xb-Dv; Sat, 04 Jul 2020 03:46:08 +0000
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
Subject: [PATCH 11/17] Documentation/driver-api: driver-model/platform: drop doubled word
Date: Fri,  3 Jul 2020 20:44:56 -0700
Message-Id: <20200704034502.17199-12-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Ba1zfCJU;
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

Drop the doubled word "that".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/driver-api/driver-model/platform.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/driver-model/platform.rst
+++ linux-next-20200701/Documentation/driver-api/driver-model/platform.rst
@@ -108,7 +108,7 @@ field to hold additional information.
 
 Embedded systems frequently need one or more clocks for platform devices,
 which are normally kept off until they're actively needed (to save power).
-System setup also associates those clocks with the device, so that that
+System setup also associates those clocks with the device, so that
 calls to clk_get(&pdev->dev, clock_name) return them as needed.
 
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-12-rdunlap%40infradead.org.

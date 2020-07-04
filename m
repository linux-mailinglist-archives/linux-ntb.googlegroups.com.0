Return-Path: <linux-ntb+bncBDV2D5O34IDRB4HW773QKGQEPSM5O4I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEE121437D
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:52 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id j3sf14863015wrq.9
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834352; cv=pass;
        d=google.com; s=arc-20160816;
        b=TysOdhZnYqxjnadJbeFIP9ctHD1cIEwIVJSIXyb8NNIrgyJezzyc2GCMuQLVdWyNh5
         uowVGwqGG934pk2qhlXd1Zf5vfRgB0u5v4YtLWU2NYm2NIB5MqnCnWCc4NY/FCHExeQT
         vpm0etqWzYTFvhrj/4pFSTJHASEK0gs4059EGmzaJLA5yZIyevqW5Ioyh2eM1gJ517AD
         +t9/OPAxPxYoNKLYboxwBsacIJdzekxWtKE2BTxd1Exy/pPTMJTOksQgS8lleGVlA1/P
         Jfa2Z4bJCOsst+ZnqbUO8g6mEQyeXuVWG8eBG5odoK0ipl3UGNqDnRKoWX9guWG2w6Um
         ffPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wBnH2sN1cPF89S6Zt04MSNHh5KT1buVQjmvofWSLxmQ=;
        b=NOmsglkuE4aZ4wOGOrY7BL64lcIBDMhO9qjbFuDkIZ4GClyJ7p1/pBFQ1M+W7JA6hV
         cgTy85hFXt7vNMpAKzfKRr9p+/Px2ILqzFSLdDAWwSHorq9iW5vc6eiXzBfTp5t8y0j5
         Xap/8H5SqZg0JpPXIegkzCf6fiXJXhjLRHqFpmlbhA5AuRc7xm855YJPPXmVnC/lQM0S
         DgIDainE4Nhzz7zmtkPV1ySPjLnVorW0H5QBkqB4hiwvV8IhD5Pn/FU6sY8ful6n+wSG
         srxca7njMgDK9PhbPihbFVhztdbUmlQcq1fXNx3lOIQT/Sp2JNSaFIstzt5sSPdphTmQ
         hPRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=pyKk1gSS;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wBnH2sN1cPF89S6Zt04MSNHh5KT1buVQjmvofWSLxmQ=;
        b=kE+r2NZfZkjXhhO2J/8hfS+5Qh9fzm1D2m3uK5PetwcPlgZgf9PsvrPyyvMCucZw5I
         32qs56d1amxZqz1k4TxD2Lt1bcI4Fo0VGMMHQs7aYFyuUIjLM0w5jIPepQYdATbcd/cc
         b1ewEFd8of/OXi87+ugVKwr6SWFqaB5znPgVOK9wKzRRtYeWpYLxvEUh/xd19ZObIaSO
         7mtpn/UDAX0gZvZ31Y/BFHNoAvIFe4oN6DCd8pcaQ3yXanXu+niEQSMgpRI9GEAsykhf
         Mtwdvr2FgEr5JcLYItB92ds3nc57OnuXE/S3eXrH/y2XmInhEQr4qGQWa8dXnO5tq6pp
         S8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wBnH2sN1cPF89S6Zt04MSNHh5KT1buVQjmvofWSLxmQ=;
        b=iGsVh8gbmvGYVUy2+vldjkW96s67700EbvpDNT7lA6brczIhhz/aVC1p3vDxlAWjXI
         cbFm+fsw2XietWQA6ZNqkpmsUnjYoqkOb5FSc73SQAdyckNk1yZ+FqLkr6SpCktmo49f
         MGj69jhpYV4+Z3bTdH+ryzM6bq6j98A9penxW6CH2ERjRtdKu5K75FLJwFjnliDN4UMY
         mOZGiRWEd9xzu/O/IB+4gvrm9bgVI5bPz9753xi3ARy/g84x1DTwA78C7W6Fe+0nyj/d
         KPpdQOMDl+JND6AAJpRmTZurqvIUah2ZGkXPgb7lsHqKV6MGODZpB+h+wDCwItt7RK80
         GwMA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530W2dasOVlnEOAXDQhRrsDpmnBLlLM4+n7KMUBHNVjtvgoUleBL
	6YpTSe1LxY738tZjagf1N7U=
X-Google-Smtp-Source: ABdhPJxsSqBTKueyHxNYKvCOAe3SUVbjjdul/WzlDBhkzznYsmKzc42FJAwli11t/L7oCqv6KzdnhA==
X-Received: by 2002:a05:600c:2118:: with SMTP id u24mr27006752wml.133.1593834352626;
        Fri, 03 Jul 2020 20:45:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:b1cf:: with SMTP id r15ls3040096wra.3.gmail; Fri, 03 Jul
 2020 20:45:52 -0700 (PDT)
X-Received: by 2002:adf:8501:: with SMTP id 1mr43178637wrh.153.1593834352233;
        Fri, 03 Jul 2020 20:45:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834352; cv=none;
        d=google.com; s=arc-20160816;
        b=JQ6/DwRqhkWU+UyOeVGV+FwRoDtRaWy2Uup+ZosNRMflKyIg/AFz4/EsILJKHRAU9j
         E7Hkoxr13rSEDd3b14SWurII01mGcFGEsgVgA1hsz8N9t9xn04xO6p+ydPc7tyeMvNlP
         OTpZzzuOw9uhRiR/P8RLc8Xf/estIwkgFj6uqTv9VGdkeZE7j0CKslro0/5ORxbzdTsK
         tHbbvkyY7raE4fx18zZJLB4Qeg6GydEzl5EwaxU+SRC+FGJEnNMTvrBFwoZoAKoNH0DG
         JTYfl3PczNhIeOyF3UKhMiq2EmXXxnN5FJbr+f3cWXWLsZiSIEUnbjEtbOtKbv6tp2IZ
         MbSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rIE2HiSejbxqQ8BF9s2XxhnmsjYecXnzhkq4IxXMVOY=;
        b=zNuSdEHnk9InXaJR4mlpQd8KdgeNeECrd2Rr08NoHxetkZflHXXmEaT1Tbn2WfJ7vZ
         t9HIzlGVThph9v3W1Yf3UL9MHYEciftuuL+5EiSK89OhH5R6p2RFohGaDhKKpSNBqwY3
         Bmp5pHAvORX3tnSgXoWtpTHdNO2x3w9V0ZjZZtBDScMfPRyItrb5HAOAqx5sWeIY9vJQ
         bfNOAoROVBtYKy3H/QcLiyA1k+uHl9s54k9wweMBgpgf7GlH49zCvgb99JvrRAXtJ5c5
         8+tochduzKycqI//n4c5uKNVIN+Mrvj3v+Fcd/4CmLLV2eTDNNZnvtuvlktw4G0vsbH9
         v0BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=pyKk1gSS;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id q193si149102wme.0.2020.07.03.20.45.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7a-0001Xb-8O; Sat, 04 Jul 2020 03:45:47 +0000
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
Subject: [PATCH 07/17] Documentation/driver-api: iio/buffers: drop doubled word
Date: Fri,  3 Jul 2020 20:44:52 -0700
Message-Id: <20200704034502.17199-8-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=pyKk1gSS;
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

Drop the doubled word "struct".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
Cc: linux-iio@vger.kernel.org
---
 Documentation/driver-api/iio/buffers.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/iio/buffers.rst
+++ linux-next-20200701/Documentation/driver-api/iio/buffers.rst
@@ -88,7 +88,7 @@ fields in iio_chan_spec definition::
 The driver implementing the accelerometer described above will have the
 following channel definition::
 
-   struct struct iio_chan_spec accel_channels[] = {
+   struct iio_chan_spec accel_channels[] = {
            {
                    .type = IIO_ACCEL,
 		   .modified = 1,

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-8-rdunlap%40infradead.org.

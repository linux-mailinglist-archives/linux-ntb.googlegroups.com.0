Return-Path: <linux-ntb+bncBDV2D5O34IDRBBHX773QKGQEEYTWM7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C52121438E
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:13 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id i22sf23934539lfj.5
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834373; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jzfb5maDXZQo5QAOAfmJ2JLPp5RTqe3B7CTS9rO2hVRnyKuaxXTt1wRfqeJPYze/qs
         kqYbSFAh7yL/xdMZqeHN6wK6HiJezfnJ8ec42WQp8iAxZnG/s6gcd86fqRauwq5yYwVl
         R/Di5I4ojWfn1/LLzbTsSroR2r0s3sbMoPugx0+vBenCe4lwqXsLiX5TTjHKZXY3QBnF
         D0+UjsdEoERFMtUqlgYdyc99UUNGJwiTyRxgyKMY3tVzaL5GX2SH+y/xIsYS9HZX//uu
         YIwEH9cd/pWGTZMR4rh5pJK1nGzII93H8zCXsNXW8JpdMnP92TSG+5l7LlaB8lK0JEsE
         TAoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wBjRMwP/fgLICL9I7b23eldjYPgnvBps9j3j2TO/snc=;
        b=kj8kEPTXP1Hmy6zpmxqQ2TZ9O3NFA6qQAbovLO/6yvgE9iXy8cSPyzoyswroP0WkIK
         C4nbWpUZTFa0CKpw2W7y8GMIa5dOsmgOeXjQoCg7Kc87WcXzf4Ib/qExTFfrqH94TXpl
         78AtF80+oWvwKQfBkTSUNy7L0+3Au7VpSQV0XUZWxPu3pbevZxzQbw+bHDoBsoJ7ry2C
         u+D/p113hGw2/IVIg9jZIGQ0toIV3eKFjSvNaIN7s8Enf/z7TcqR6rpa24Lvuh/6Qrgu
         bxwuEHdlxa/o0xAg9yh0Pkntcs827pd1N52IEQ5o6jgy6yUgMgL+sMaeap38H1tlPzJj
         Vihw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GtpfoO3L;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wBjRMwP/fgLICL9I7b23eldjYPgnvBps9j3j2TO/snc=;
        b=nb2LPCRfTAVeksMBlq9AcDVgv0sjni2usvXMeOagAIJjQxUCmic3yG1Odkgdly2SBe
         oLikF1DIxzn4VKl8bM/zVaIDHCl6mFoCaIz5n4dKA9FzUeEfQKPzh7bpiULyTkDNVbzP
         gBp14wKoQ5bbml74qG+jhxM5MF9Z7faU+sqVum3TSkaR23KNF9XkEJFOmYrp2dpYutOP
         JoOS19d/vfyFIpfZAKfdvTU9IC0WKKqZTrXcy9Gxike/7NvtVvfeBe/qMy0Q9KPyHQYq
         htGREinJiJLxubfPjY5Bh+89bJc5u2mCnFE+01FVN/jknJ1B5C9T9lNHYZsbGMBzHCL2
         Kyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wBjRMwP/fgLICL9I7b23eldjYPgnvBps9j3j2TO/snc=;
        b=NQ9p6e+kY3EHnbVq18Bo+vQV3/gPQ/PAeCKPFKzTFLtAipapYqfDYLBByk5tJR5Ulh
         Iz05WDw2lK0NS+he7qei5pGMk+Ui+lqudC5witXk8ZzFX7QdnqOyvlQsLPTu3qnX1B0R
         hdf/VAuBi0t/AZ5iJxbf9HsEU9Vjiq2PcaGxFOTsFAAGaRDEzQhzPtpBv/b+/TIrYNGM
         Fjqsqowq3BwQlbsOe8ICHDBYaWiDnqZj1NSpISTBqJgG+wlhiWeuzgr6xrMeuNhMCQd0
         s7XjUGuKrNq6hzIRWbw1crV+7ishBeta3xFrKOe+41mlHsGcdt2PxyAv6IPlz1apElkq
         WTzg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530mmfflOuJqxAh3EB6gS+skTap/QiFiLyY0sFzZTrKEGoEi35HN
	NcbrwYZfsxyrfBIDGxJCpCw=
X-Google-Smtp-Source: ABdhPJyyvbn/TkwmBnHgsYguRKgYDdUtzJOTbTVsnw4ODFkhqqz7Q1z2Kn/IV0j7gPa4SA+0a7IOgw==
X-Received: by 2002:a2e:94c9:: with SMTP id r9mr21013545ljh.445.1593834372876;
        Fri, 03 Jul 2020 20:46:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9190:: with SMTP id f16ls273576ljg.11.gmail; Fri, 03 Jul
 2020 20:46:12 -0700 (PDT)
X-Received: by 2002:a2e:981a:: with SMTP id a26mr18837305ljj.337.1593834372198;
        Fri, 03 Jul 2020 20:46:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834372; cv=none;
        d=google.com; s=arc-20160816;
        b=X4gTevEaArjtIt09O2HajFJlVHPj09v2ccx2Rtz1PrFLp5FXj5qKDl/LcGnNK2VfmO
         J4MX+bEfjGinSpEXQeLeYXxYZh4d5RVj6S7J5bxN/kcs/ytVMiPj7dAWOF6saXNV0Te2
         Rox1gfnhaX+Bah22fkX1578sPddJivsF0nVz1iMEG7KW/0vzOowodQ/gDA0IY87A2ncb
         LffjQJ/BxDkQPqd4zIVaMm4Qgz9w65981WvzIxBx0zyU5Y8nOpgnIejn0F/1qAV7vkPy
         7sFMxKtmKen2pOVE2CqUsmEUPd96f1luvmcr3C4esE/ouyawdYHr4D1p/LJPj13Cxjx+
         xl+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1H7C7zEDvKakDL7QnZ6YmqSUL7TPTa6iZ3cT+yZu6A8=;
        b=E2l7d9pXE5tCOdzZRuz1wDKeaFcR+Q4xK/bJJSyFRiU5RfgcX48UuE4k5UlqKRLKky
         qwJQ/Rh/8HdPgEf46v4Ixy1wfw0aIu7INUQ912ME6yrpFWgOJ09cKZiHUooKrVJg9nTQ
         jeSKmZorD07eTma6uMfpS7zUa8G3nSRRTl4CEdcztoDLhKyR3ORxV/NJkei8H7zJhl2i
         rOwhPS456Of2rQfz9rY62HKb5BtAVRJh6rdkepaZtkr66g6ICLSoPHF5lcsCfm82KOGx
         SE2cHxIaMl91e4PivNjRDJA1fufoFS5ui9ZFweXgei8MWu5YRefzgeLz98N+8563B4/E
         8Oqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GtpfoO3L;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b13si464467lfc.1.2020.07.03.20.46.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7q-0001Xb-Fo; Sat, 04 Jul 2020 03:46:03 +0000
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
Subject: [PATCH 10/17] Documentation/driver-api: media/v4l2-dev: drop doubled word
Date: Fri,  3 Jul 2020 20:44:55 -0700
Message-Id: <20200704034502.17199-11-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=GtpfoO3L;
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

Drop the doubled word "device".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org
---
 Documentation/driver-api/media/v4l2-dev.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/media/v4l2-dev.rst
+++ linux-next-20200701/Documentation/driver-api/media/v4l2-dev.rst
@@ -212,7 +212,7 @@ types exist:
 ========================== ====================	 ==============================
 
 The last argument gives you a certain amount of control over the device
-device node number used (i.e. the X in ``videoX``). Normally you will pass -1
+node number used (i.e. the X in ``videoX``). Normally you will pass -1
 to let the v4l2 framework pick the first free number. But sometimes users
 want to select a specific node number. It is common that drivers allow
 the user to select a specific device node number through a driver module

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-11-rdunlap%40infradead.org.

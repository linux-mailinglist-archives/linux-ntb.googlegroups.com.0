Return-Path: <linux-ntb+bncBDV2D5O34IDRBIHX773QKGQEFOMBVKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ECB21439A
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:41 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id r6sf23883078lfi.10
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834400; cv=pass;
        d=google.com; s=arc-20160816;
        b=lpCRpTnofUQq8TlcFI2Iyw+EIC+PuZ8H2m50MUhvj8mTz4kn9ST6CEyw8hW3A3NvOE
         v53jhrYWiiZjaKsj+Hy7mZMDBcpLmrJCjsX3gPX9u0CeRVxoDKG6ZeyvTrHa7LM4akAY
         rWWulj7UzwSCiCktZE6+5GuH5EpJUhkVjIAwUcX/oFQkvOQX9ewL2+d9AQCvyKHwowBH
         +9xq9SYbh2+leqiv6A0Dkpu/H98gAHbOVHg1Ng71CauCkBXydZ+e+wmUhQg63/pi73xm
         QYMcIfDk46aoquBWr/EAYYZhG0fDN0wrHMTNFMwbHT5E+vw3GFyW7+tSmAceha1+xDUY
         R9Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pYLYSrCUvDANohyvyjSICHC2JRsJQjBAGCSiCuqeFUo=;
        b=ya63223qe4owIrV7ZQdsGQXBW0PsgFyelpzoTkIA1o0hZ2Q4cuX5zsHmGGk+PBOBn7
         oJ7oqwj86OLRIOV+6MUVc8e3iIgDEl/3WAcQyCyOWLm0Iz8B7xGqvxvOApHBn7ALUEN2
         deFZz1MoLhOC8x9zHbFtXGZyId6KQMwpUUaoFiMJk9LOUaM0JrKYD9bCDh9AYToVovMB
         316NLjtIRQgt9KNhJDIMY1/hcRQ9HSBLtKiMTZDqdmL+J1LCU/Yqsrg0G++RWWI84qpo
         PukDHU0vAgjQOi6yu7K4j8sAKkg8jAMci3I8MXK35XFj7THqHWhO7tPEc+gCXuTBQPJu
         RlNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=DXYvobCA;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pYLYSrCUvDANohyvyjSICHC2JRsJQjBAGCSiCuqeFUo=;
        b=OVJ/1D/WPhZPuez26dLYyT0080GIZJSn+6wF9Lo6pWRciMFyjoqisMpb7Aq3Dip9jK
         s4BasTW7DWGSf29aSUM+kgdedIzB+Nxyu0LuUDnE4NNwNnIWg8bn0SvgUo17pkkgUc9G
         2mCjLwLHh9C252T8xKjBKVcgHJjrXZxlZL/4h7N7LOy6a3rwv/htOi945YRScBwNcsBb
         NKIifNPKQ3lExeaVnpHORonf6RGQPKE/pvDld/Cj45dmTzFVIs8puY80aXJWFJqgBPAF
         dYEpbKOBBcMM1OSMB5tJCoNDF9GbndnaoINFOFy4QBWDngv+6h7ZJG4+Cc1eVFmgbQ4Z
         qJNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pYLYSrCUvDANohyvyjSICHC2JRsJQjBAGCSiCuqeFUo=;
        b=rooF3G6/QLXFeBjOOIHaLYpaPb0m4A4+nF7jRkiwkHG949CZq0OE0fqpFqKNWJ89M+
         XGnC72yY/hkAp0QHqBAAb0V/7UcOo0dgAXsbLWlwbFNS1Y0O2IIgAAp/jrEQrdggyRUB
         bnb1V4Jg3EZmcQVATwdkStpR9/Oz0Ju/HNpxmK0R4sH17PbgNv3P+qvV4QNglBp28NBz
         mcsTnbnePNTE8SPfZShbDLFqMhVsc9nhDi1YPEsz2Fcxfqw7h02ZCxRjCNW6J5lDMasD
         NqmdGl7hlMdfe6bMgY4bs4Bng7/QZ0vMwOCZ2Kz/u/blYY3rK51HBN6qJB76kRs0oUNe
         eLVA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530lf252qk/3XZa5KqyhWkMJ0Vf3lqNwGKaGWItPqFUcc3RMMtVl
	WEPtoxGQJKKcncuwtZps5zw=
X-Google-Smtp-Source: ABdhPJyk0esVT8TwSCvJ/mFeVx5ln8bwaukDorkcMXcXy/oiqGKADj3kv1ufUNZ/6xSj2rz+VLZejw==
X-Received: by 2002:a05:651c:1186:: with SMTP id w6mr3571374ljo.123.1593834400807;
        Fri, 03 Jul 2020 20:46:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9190:: with SMTP id f16ls273637ljg.11.gmail; Fri, 03 Jul
 2020 20:46:40 -0700 (PDT)
X-Received: by 2002:a2e:9415:: with SMTP id i21mr13049433ljh.196.1593834400453;
        Fri, 03 Jul 2020 20:46:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834400; cv=none;
        d=google.com; s=arc-20160816;
        b=NBwRTp3mjf7OtCKHvLW1Fuk7onU1oyFeJAI9P4EhZRVyLWRF9YQ7kmNXXUPKpwX5pT
         7JcvFicu+KcJefwf0dDpN366emd6muRe3Muwgn77u7eu9gV0DtAXWEYm0pK52Uf51AD+
         ySqRO+wbzepxmgiqb62ZIlSHK/5medKFsPFQTWEVax1yjlZ/oxhc4hHvEGeBsQfrJ/3O
         u1VRsDld3TMRh3OHXTbFIEYbtisojJTvBbB9ErPUW2eq7XNjc/jPceKkPQPYC33aUUzz
         wSb+TLBpEPpNIbuE3WBsxQUk8kr0YK2S7A+XgcEEzeFvr0Q6ZnwgO+HTWAzFQYWzDxTA
         +n2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=U9mKbOAg3310yWA876tLatVC/VjWDPAN5b9UMcsJebQ=;
        b=OVRUuBx+uLRMoh8avb5CJCfB7cHI9ke5cyaiN3TuvmycQ+U1JafAFYA2tLMDM1fhx7
         OMVR3H/GTpBQg+afzNHuoRDCZEUPWa1iuj8NLOPRYRJrw65kCrKWreSq5bzbjqKbgLMH
         7/qE+FNGZkcI7bIGQHDbzMGXH7H54IQ9PuirihLaa1nFxkeFF+YL/8wUrGr6PKV0HYpn
         6r/MNtK6Ij/Ci1OtpCuHByXw+mlDpD8DvSTEm5kp4xwwNz1WW8ahXD0xgBwlMgXKcuJI
         V+02Bz0pGvkViLdhMF2S9tBFRlhTWg1oZYHYG1t1TeEPZ7eMyqRuUPWmUFKK9RqSX9yl
         lvBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=DXYvobCA;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id p10si877590ljj.7.2020.07.03.20.46.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:40 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ8M-0001Xb-5x; Sat, 04 Jul 2020 03:46:34 +0000
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
Subject: [PATCH 16/17] Documentation/driver-api: media/v4l2-controls: drop doubled words
Date: Fri,  3 Jul 2020 20:45:01 -0700
Message-Id: <20200704034502.17199-17-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=DXYvobCA;
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

Drop the doubled words "type" and "the".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org
---
 Documentation/driver-api/media/v4l2-controls.rst |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200701.orig/Documentation/driver-api/media/v4l2-controls.rst
+++ linux-next-20200701/Documentation/driver-api/media/v4l2-controls.rst
@@ -335,7 +335,7 @@ current and new values:
 	union v4l2_ctrl_ptr p_new;
 	union v4l2_ctrl_ptr p_cur;
 
-If the control has a simple s32 type type, then:
+If the control has a simple s32 type, then:
 
 .. code-block:: c
 
@@ -349,7 +349,7 @@ Within the control ops you can freely us
 themselves. The p_char pointers point to character buffers of length
 ctrl->maximum + 1, and are always 0-terminated.
 
-Unless the control is marked volatile the p_cur field points to the the
+Unless the control is marked volatile the p_cur field points to the
 current cached control value. When you create a new control this value is made
 identical to the default value. After calling v4l2_ctrl_handler_setup() this
 value is passed to the hardware. It is generally a good idea to call this

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-17-rdunlap%40infradead.org.

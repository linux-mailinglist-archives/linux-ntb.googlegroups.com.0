Return-Path: <linux-ntb+bncBDV2D5O34IDRBT7W773QKGQEUQE3WRI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A6821435C
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:19 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id v24sf38153536wmh.3
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834319; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQ/OtV6EB5JqSUH9S8R0FL++NW6BTypVIyuigiAamejvEKobDhCJHn+gH+59hCO3/l
         ZDx0zF5WnfUVKMJzlq3Ry62+uaVaB/1ialpQxuCquRqZdoyJD7XAO0Zf9oZNKI2jCMIR
         UOm3Gr1x5G5Dh8/GwNOdlDM2RVYP+ZpNF21XBLZmw2diWZa6/AzbKJbU2RYh0DGBJae+
         883pQbKa9i3lmr5V5KY0wDBvWuiZEp0zvTyg0xsz8/rS4uOECWWa0AahGujqvY++SrhU
         1G5D27QSzFdjPUIXvUTSfKOtoURkjbWQkZB98G49RW8pK45TzUGuPzbACuw9ihyB/rFf
         X4MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QQDdQ+lGMl+ACDabOmtUiMKdLVprE8zTqzotE1NkWL4=;
        b=e8RoEnjr2fTK+VmWgYO8NXwcJrz95kWPLAbtXbubk4bsumho2YGvp9hdq9qkNPrgZY
         Fj2euAXU5+0wWtJo3zej/gQVN2HmfCTecdupSu0wY/5UQLAUxxKsroF9ni9715HubWde
         Y8AokF9jS33+I3XofetbpR9GMqaicl03EXSw6wh3wrznP1prZIkr2tPc9oJRD7OWLmPj
         Pi7zeX+GyjJggoTBx+EElrl3qyAHhRBO61T6jNXKEyjEFc6vAJ3GOlrq2BLnh2pqg/JJ
         ZUEP3/NaNM1AHIworDhUvWfR6F5iVD5AQMLibt5noi9cIAXO7eIgkdTlFpDiIYPlbOkz
         urDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=poKqFqzy;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QQDdQ+lGMl+ACDabOmtUiMKdLVprE8zTqzotE1NkWL4=;
        b=nrPCMinfEqNREkZ8SSKWgZbugNLk0v8r+gnMdHT9wyGNxr8gbOH6Hx5V9IlEJ0jyyP
         MMqdi/tuMIExq+CUecHqlSlY/JRZMVTLyJJ/E24xfggrzTptpfmo6GdKOVybrlqmj3yl
         zhluZMomGwwjIuLYyq3VKp2w74SOdEEOrO7LQGnsWUsaV+yeAiAUKh64Ep3uIxjmIn0N
         ITHxl+pwWR3uN28KxVESIrIv+D+t7fwerxgb1su6Mryd6qSWTOeBxlmWpkmoCVH3qxgY
         Q+Ep/58VC+/ZvvgRBGhzf/lrr/om2Ri+y81qCpTLvC2b1QBSCQ3fk5HMelb/9oRms4iJ
         IoiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QQDdQ+lGMl+ACDabOmtUiMKdLVprE8zTqzotE1NkWL4=;
        b=kVZgI5H5qepbP2rNLtIR/Fm/uTHl9PpJI31nVcwYau/2bpp2QY/9hjyj0a1P+v4mb7
         Ed4biimamjq6myx88iImW1C0Vpi9UydbwdodP+SDjQoRBQMtKxa+LCxsdaw/p0y4GO6d
         IGpWolA6jfipgTFLkxkeMoK4m1k0eFDyhFymBvWJosigKzHzn8Zx+RmPnm2h/m8TMdRZ
         0GNtdNfyGykTySWcb7o5KilGAq0zvlva6IFFkFVAqpsVxh+TOM/7S1zkOUq3NvEcwrpf
         Tl7+E/845aSN4bUcTIQWUYBiGVhOpmJl/j09ZvfCu23CZNk6j9Wnjdeh+KiuUsAnTAfC
         sIbw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533z4gML2l/P3gd0FT7VHc+hLNeoTkihqNuYHUraWRpU8hoY9ftH
	Jm01s8rUrqYUeieqVquQ2V0=
X-Google-Smtp-Source: ABdhPJzk7TxtnCICw2+eC4VA/eKvGe1PLOppghtE9RVaS6GTtjSiGZ7hNxkIj5Gee/WaSdEVTHpDQA==
X-Received: by 2002:a1c:dfd6:: with SMTP id w205mr41515249wmg.118.1593834319201;
        Fri, 03 Jul 2020 20:45:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls3030511wrc.2.gmail; Fri, 03 Jul
 2020 20:45:18 -0700 (PDT)
X-Received: by 2002:a5d:4903:: with SMTP id x3mr41751147wrq.351.1593834318754;
        Fri, 03 Jul 2020 20:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834318; cv=none;
        d=google.com; s=arc-20160816;
        b=v+6xEceMgOfGqVQoIIGRV6W756BoUR/TfiXRBqkDvRBsX6crttyVkljpPhT2T0BMMZ
         JhT/Jem+4Qzbqy0oxKXRtX9XtcTUTEA+s1JckzHVNBfRs0ZFyGqU3/tUJnjaJ7LphtC/
         YOi5HlM6UnsT84BzaPermaOGxvs8Ytyky/R34goA3FjQ+guF0U15O1DqJGDEpFR34cau
         Rq2iTr10X/MSPfhXSRYMuzRMxMTNRVKjwPmDg165IWbXWOWo4o6Y8bWgGSFmGUFTE2pA
         xVmyhsSaEX8nktMmn17vIxQfu6f2lmuilrtgFVOvMSbMwOtaKE/RGiv1POeBSDZWainx
         gR4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cfuMtEE7aLNsTWKrfmSLBZiVov+0MQq3QCFMWag3GnA=;
        b=VjRqWHEeNd7QLuph/lNE6nHqscT5U6u05+Lj7YtKVM38sXlIu8p+sWUEEntj8lgoaC
         QvWGztTBJtYv1hJc84QKKFz0y2AmAXToHZMn+3xWGviG7TtNsdnkotvG+A+k+SbpMASu
         LEgXaJ+5PANKWRTN16GOOXAr5k9GDgdkk4ilK3VTW4Jo9cEfm4SPDC8sSJsw4yBJ/5F9
         UUfXXUZr57qNko+vuQSvn82Rqgv9DLpPtEaSC0qGUqcV/0IUpdS0kZofBn4fxgzmSBoe
         TT+gC4zfql/468Tq3dp0RDoidp3IpsXRpVbummzJB+gEfqzR32aksE/roXMcYxkJaEzr
         Fypg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=poKqFqzy;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id l4si760679wrw.2.2020.07.03.20.45.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ73-0001Xb-CK; Sat, 04 Jul 2020 03:45:14 +0000
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
Subject: [PATCH 01/17] Documentation/driver-api: dmaengine/provider: drop doubled word
Date: Fri,  3 Jul 2020 20:44:46 -0700
Message-Id: <20200704034502.17199-2-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=poKqFqzy;
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

Drop the doubled word "has".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>
Cc: dmaengine@vger.kernel.org
---
 Documentation/driver-api/dmaengine/provider.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/dmaengine/provider.rst
+++ linux-next-20200701/Documentation/driver-api/dmaengine/provider.rst
@@ -507,7 +507,7 @@ dma_cookie_t
 DMA_CTRL_ACK
 
 - If clear, the descriptor cannot be reused by provider until the
-  client acknowledges receipt, i.e. has has a chance to establish any
+  client acknowledges receipt, i.e. has a chance to establish any
   dependency chains
 
 - This can be acked by invoking async_tx_ack()

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-2-rdunlap%40infradead.org.

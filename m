Return-Path: <linux-ntb+bncBDV2D5O34IDRBEHX773QKGQEZGDTMRY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EED214393
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:24 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id e15sf38012585wme.8
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834384; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dz1lJgNpuBSgw7Qjp/jsWYpuqW/aVZbnkia9Gy5j8dshp/Q6f06HdVK9wsrH9LntDN
         hg/tJ4m1kB0pBvUuAZ2K4FZeG1JJrVlEW0Xsm7JYBxzJkZiMdHOLNckrI3YoZLgBJnlr
         gEGzoLBF4QzKGLU5Tr0dv63ISD8+zFhD1MX61wX+gNY9b/H/y5n9SVuD92KMh7G3byjO
         uWFk6Ief+Wqk3V2d3TyggpQA6M+Rr1yRaQwmCMANGfx9hpWxGohEPOQs7slbk/NEE3gr
         8XX4F4qQH+6umTpbeD6yabeRrmO5LHesIzjXf9kut3y9BvgcFJn8ewj5JXzJSUx8TgX5
         YvoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8zTMEkLwaHaktUODFliAs+o8N96i8+EdWpaZEJ6wpbM=;
        b=z/1BntxEQjDmrqdTpOktcsKeotfAuTYB5EQnYO1zyhT0uy+vQ+lhncYvfEqhfJJdLB
         EfQnAkkum6DaOA1ex/3LqFpdRpy+AJWjed75SoRVoFSj2CcQzugOsCXJC6x44lQ6rdXD
         jZ9w7x9JmyOBg5Quq89ldu4kxu8duXcCqQqonBJJANU8fmPq32ZEOIjd1fKKRjLFVN18
         Yq8ujYkvrXDUGM+SIGtw7xfYNUNosR4PIHCFdS1RnTvCoCtlyzOAPJTEXMQlgGjl6K19
         JJg2tiZY/dl6mXkqJ/SNiBm0zlZ2Sb323J4MyHfw9L0uNwqEcK1Pfz+jb5b6jlc1bb66
         dD/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=o2zYcSx9;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8zTMEkLwaHaktUODFliAs+o8N96i8+EdWpaZEJ6wpbM=;
        b=dGRTWKyMV2EzYf2rPnCLEn+0VK/LDpRGTRixd9x1a9OpM4jph7xoKYMNY4NJv2LsAP
         BO8Mgv3jQHSQJTl4lZ478fBRcSAUFCPvv6VSBTPg2wdJcJxP0J0g/IoVyYaoxOh6TGF2
         C3wa6m7nC1rwYVoMqnCM5eXaVjwvVV2MXttXyHdQj7uvSzFjGO33NgYq29ZJ0NMXM0j9
         ZOh/yhrlVTH7ro4GatrYWJ17cDwf3GIC4aTmRkvqPVtH6dUAdzc4C6NP5PFKj9g1Nn9m
         ihStyJr/YOvc2IA6bOOSwgK1dAbB40yfTr7rT3Dmi8geCI0XrmnzcnlaUMvfMbY3FCYj
         fp9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8zTMEkLwaHaktUODFliAs+o8N96i8+EdWpaZEJ6wpbM=;
        b=W5zYOn2wmS5kqe8CvPg81CEFnETZj0MHplY5YK2vnRX3nd+P+WXKuE6yeBpgK8lhBN
         ZSibw8edHMpl+mAcnq+RFGidxruADSR0SfvHgADow+zE7HuOvOxiuicrwbTQHCjTKflH
         vT6FQDs2H8+n/IFzyWn6OsKINgF+kjCy0FpZMz9z1/FmfOO4MxvwvFjBjFfpZbyzx7r2
         8/e2rglufj7fsW5svc7nNzxtarxPAl94v5rGWJVP8nbI7S7Er6SqP6gh0ulPQTpRMz+j
         8o7L7/7XLYZVaf59aePoiIfFjHgKdwvthV7LlZ8lKZJCFKgTpWSeGw4fcae+6P+ampb2
         EEXQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5328cnN/+VgebNILZnG4PpBI99yQ9iZEsBHgUrqHJcd0mMZxF4zL
	gRJq7pf33GdAh61X6BcDLf8=
X-Google-Smtp-Source: ABdhPJz06fRPbgIsM9M2xmZYEtdcsc2nfFGmOAjLLs7f4pLL0seDagkRW1yrzDVWg8a8Di7sHHMFtA==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr15841201wml.183.1593834384050;
        Fri, 03 Jul 2020 20:46:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls3037178wru.0.gmail; Fri, 03 Jul
 2020 20:46:23 -0700 (PDT)
X-Received: by 2002:a5d:670d:: with SMTP id o13mr35996460wru.307.1593834383750;
        Fri, 03 Jul 2020 20:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834383; cv=none;
        d=google.com; s=arc-20160816;
        b=1CZzvTMs5IxCn+vG+yjJ7UIDw5moM9Mvecx4Rb0d7XfgdTPL6/W/0hYo0xzEZQlspz
         cjFxg/a4mP2OQx7ws+AJui1Zqz2ogmo1/wSxWkZFtVdD7ypnb3zffU/vSzaUkpCeHg5A
         O+KZhFIRLjTAqSKFjfsvPyf+gFa4nSjMO8n51U5NBL0ce+LTu+KlizwDQuMLOWy1NXrr
         CyVcUZPW/WDhYioPJm/qaKahrYUANNhGoxekYZH6PBjplAltRO6SHrG4ejueIwBFk5Sj
         L1jAh4JpEyDgNRGZfi8CoCW0+i/8g7AullVwkFYD26vDUMAsg7CHlJq5Ae9CIuFcbLTS
         5GwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l2dNp9CDCJWinvc4lxu8WrMSWxEENUQ4lh7tctfmeCY=;
        b=m/X1DubRii1HFMFDh86n02B9WNtv/sUKhh6oaqMKGQDZ6rWNq9xMnh5BhD1W3lCLEE
         t8mVDXvXTj/egn9l/UjEFpk+rgFXOzD2bge4kTtrz2p2qO5oA3c4PLrrVkJni50RIr+M
         458v4ZvOm3fcEbDeqqkwCob0AluqGIsBkL8ElTdSdLHueK1+0jtYS1otQAJRTAX1Aj8W
         xPpjLxOMNhgxSDlk5O5Cwqzkjn28cAY+KqtmYUafngDR9XH2LB4CE4TAb3h4EE2uhaeY
         PRDkVYDABVX+IMCym+q87DbI3mo72SjKr4J5/WJfR/5YQf2QbpM0UVYnEwrwqLmGWBpb
         xwMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=o2zYcSx9;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s207si1829303wme.4.2020.07.03.20.46.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ85-0001Xb-S7; Sat, 04 Jul 2020 03:46:18 +0000
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
Subject: [PATCH 13/17] Documentation/driver-api: nvdimm: drop doubled word
Date: Fri,  3 Jul 2020 20:44:58 -0700
Message-Id: <20200704034502.17199-14-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=o2zYcSx9;
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

Drop the doubled word "to".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: linux-nvdimm@lists.01.org
---
 Documentation/driver-api/nvdimm/nvdimm.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/nvdimm/nvdimm.rst
+++ linux-next-20200701/Documentation/driver-api/nvdimm/nvdimm.rst
@@ -73,7 +73,7 @@ DAX:
   process address space.
 
 DSM:
-  Device Specific Method: ACPI method to to control specific
+  Device Specific Method: ACPI method to control specific
   device - in this case the firmware.
 
 DCR:

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-14-rdunlap%40infradead.org.

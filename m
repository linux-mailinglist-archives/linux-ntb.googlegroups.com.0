Return-Path: <linux-ntb+bncBDV2D5O34IDRBFPX773QKGQEA77W6HY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BE1214396
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:30 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id h26sf9804249ljl.18
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834390; cv=pass;
        d=google.com; s=arc-20160816;
        b=z9WWg0Hk2fm7UmyDWzmkZXQMoPvb+Y8qehRYDwyKw6QGf88AhnCfpbSHiQGoV4xkaJ
         LNnxyKEUlAx/YTkFunKGjbDMDQ2GJJFN+5Xb8Rikxtg/RxOX5tHATO33DBs0L0gs+7Di
         IO6ok3CYOIBnSyeV30/VsdErCJaOX3NGkx9qp2MCi8oTihYgEncGi0Cp2mx4Nqv0jIsB
         3FCtEnEoVAb+nH7ThJO8FHLp9kQ4JnoqiGJ5FzfxldujB6TLKwIbZ7HkwApKOlzGMkss
         57WwJKL7M7z6ksVVCwLdfOODnmrml0V21VVYF0NsqcoAonIBB7Vlc9Zq8wiAJr+FadHg
         9vmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L5O46rzvD3ZxUIZistojmNGqPcu7qNawK5d0ZCCxCKI=;
        b=MWbuCKCER5nBbqZX2MgAqIJFf2Rf9h2V74tWd613wPjeSkJMaZ9x1rh+P6nL8luxwT
         ure3OH0zP2LrnJCsuE+PNplAoa/NRJgcOkHojHiD4dwcIAYSJZyQ4EitRkZZajzBw+V6
         ibQ9Xir7r19AXqE1inUyw3EeHkBviX/LseFMhXnOO2rvg4jC+ySBMHtCrzh7iORXoExp
         LUOLbxOYe1fXGutBZ069+XuftUed1qtGonXeb3nkzhjVX56e7sMvK3p5tSeYB+CxfpLF
         BepfPKrAaFD2+q5fBqsgAjhoY+zLd10bY16VoUuYmPTkjxdVQk8FCCpsAor/ztReThXl
         LZOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=tThxSQHI;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L5O46rzvD3ZxUIZistojmNGqPcu7qNawK5d0ZCCxCKI=;
        b=WhBuEQRyO5ui90yWNOOrJWyECiQEDjM4So0WcdcOQ1YXhQeHCsuTM73XGKDm9yZeYz
         m2Sc1KFNpd49ZbWAKVCnVZc7YZ6pSJTpJ5EeHrgCBK0YnvtU8gRvxVMowRmBdeVz0V1N
         tQKDerNLTP34nPcLJJe0S/6WsSmJC6uwaVGsQHbow2PQXF7yBEXpB+OtncBOxPh44MiW
         M9G625PY1uweR/ghmtRzU5ww+dEX2KdaF62c3PtmSOA3p0jMczpxUXflCIAJkpuO3j8v
         hUI+Xs87gj5/MhANyMceevKcMLmUu9UcHZSGADCfqIX+XvISfcLBk9aokqjF690W4BtD
         dGSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L5O46rzvD3ZxUIZistojmNGqPcu7qNawK5d0ZCCxCKI=;
        b=bIFOeyvMpYaQ2wPat66ApLhDDN2XQBj5AyEzE4dIPgQh3aPnQbZUePEopiLO/rEfOe
         0FqcGk6Kj0d1/cN3n/e3w9WClSnE7v9UwHrA9ZHEaMQwQ13FzjN9fT7zaEVXd9CwQN11
         ToJV3GjIWTh5UjzGw3HsUAfobdg8oxVo4AS2qsmSqqlcmD4lpcanSnCa5UP5zLbBUxaT
         UwjX98n9Z85+cawIi+u0Ck8UvHbrtdEE9KWxynB92x8hhKb758qk1ZjUd3l0kwgdggXq
         cqqc8Aadkq9mGnW2OX26J5Fi1eqLEW77pmEQyn6IsttgV4FFk7axB+GyeVBzpSuydY10
         Xjow==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530N3CxxT5wIJatIFzVCKcmKgL1gWbOhLvm92Ox6o8tO0iiAaY6S
	X9//mcFjsEwCatlhLCO2MjI=
X-Google-Smtp-Source: ABdhPJyZMnK/rFLWYDI//QIXooBeS0vTBVb3i8diBDx9qobqs8am2hWEQ3YN0GH98XS5WoFd7LQ0TA==
X-Received: by 2002:a2e:9654:: with SMTP id z20mr16211918ljh.189.1593834389906;
        Fri, 03 Jul 2020 20:46:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:b0c6:: with SMTP id g6ls274580ljl.9.gmail; Fri, 03 Jul
 2020 20:46:29 -0700 (PDT)
X-Received: by 2002:a2e:9c51:: with SMTP id t17mr12622562ljj.333.1593834389429;
        Fri, 03 Jul 2020 20:46:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834389; cv=none;
        d=google.com; s=arc-20160816;
        b=Jkt8/aIM279B6np/aSbmglqrUwLHFx/U8+CfSp+oTcm0uGR6+yssmkVvwKQE6l+aKC
         bUjeEnOHNXlwx1D52qmxRK+HMZ/FhzHEuhPuIMilixjXGy3341VPpKA5mzhgfj6b82GX
         wUerMg89/nPEt26uyuUbTEHw7uwAeYPF1Y/2B0MGk9LheBNjmO/VywiWeTXelOxfWSJz
         ebhmGoGSiWdqkezJidl3RIeRR2TjCpO+J4Htl4b7P9+rG1wowwlEsNout75oSM99ClrA
         2XAWTLRCwFonIFI994/JsbztUeEdm0zExNRgfii6U3zcbJ9X4wnqjy9q6+gupyXq+6Jq
         vbLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Yq+NcoPRctb9cTYxOdPjKEln/NFtbJY6YqfumM1Za80=;
        b=gGtR7w+/05doJgTD9+HjMYdcQqdhK82Ruqwwebxcd9oayPLyupcpshoO6U2uICRcnC
         lgncAFSNadq+E3xpeSenp+fMof03ePsJFXzdVH3LnNhTiUQuJDpLO9mY+d74Lrn0ZoJz
         oKIqM0zwmJeBJUeD+o+8JctjyQEZ8Xb4nPvMdTCgaisb0LRvg0patviKWNUs4raHqQ5B
         z4YwjVY+PwCt8rRfF2x+Dipm5UsreOdsbTcx46xCbOiZi8YftWOLILWGEmQ6HfTIrjTP
         w5vggfkRKmt43nBKs9FcmatuuDXee0UYMWivBHRuRCkR06KlZ9RdWz2+w6US59Ps0Lgo
         KwnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=tThxSQHI;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id y2si814296lfe.2.2020.07.03.20.46.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ8B-0001Xb-A9; Sat, 04 Jul 2020 03:46:24 +0000
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
Subject: [PATCH 14/17] Documentation/driver-api: uio-howto: drop doubled word
Date: Fri,  3 Jul 2020 20:44:59 -0700
Message-Id: <20200704034502.17199-15-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=tThxSQHI;
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

Drop the doubled word "you".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/driver-api/uio-howto.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/uio-howto.rst
+++ linux-next-20200701/Documentation/driver-api/uio-howto.rst
@@ -274,7 +274,7 @@ fields of ``struct uio_mem``:
    region, it will show up in the corresponding sysfs node.
 
 -  ``int memtype``: Required if the mapping is used. Set this to
-   ``UIO_MEM_PHYS`` if you you have physical memory on your card to be
+   ``UIO_MEM_PHYS`` if you have physical memory on your card to be
    mapped. Use ``UIO_MEM_LOGICAL`` for logical memory (e.g. allocated
    with :c:func:`__get_free_pages()` but not kmalloc()). There's also
    ``UIO_MEM_VIRTUAL`` for virtual memory.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-15-rdunlap%40infradead.org.

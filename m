Return-Path: <linux-ntb+bncBDV2D5O34IDRB27W773QKGQEVOSV4FI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id B706A214371
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:47 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id b8sf20448854wro.19
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834347; cv=pass;
        d=google.com; s=arc-20160816;
        b=e9euKgjsxM+z0lTdVkf7TPALxRzIlkAfZevaG7X6JR5zdQLlBfNo9JQO1lt4ICCsJq
         BlYoqb7ZGmL5iygn52LG2txagjLmYYAx0FzgKr+rVxLHwMpr/Tzw+GudeAsOJJCYO3hg
         RS8nt+6tGNvFWNXEWUvirTqtPN7cH1yT0AsJGcRlDIToYZ/qtlXso5Cd3gmKTJgWuUxd
         rqdiOq0pf7xg4t6l0P8xTd3Hjim6NqBSI72rwKt2x+ajLr1mjG0SXbgaDInyvzeCzbxE
         j/EdwIL5PVly4G1KBNgdI/Wd94UtN6vkvJJ/iZBpr7BUzZLlbXICobCgn0jmEwKfe23O
         pa9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=swjr8RIryY3H7Fqncpnm1lEI7rTUBgDKQKhRiP4hRzc=;
        b=TyRnPCCMdbmQCcm/3NGf0vpxxF8oKjwAQ82S7KERVss5+wmHYB+5QA+nllkdVZvyBW
         6TRVWwujOGp/UFd17WjnQs7gr77AA2ZNTUqk3KVW/ndsn5QOE94Jv0oN94+iPTpxpixz
         zPw9Q8FO5GXb0yrjr+3oD81pijxlePYpV/3twZTxEvRCHJFTT62LFlAJffT0onUfivSi
         d3LtwNRpDmXliRCPI2abH+tlLf6l7xoooh1LYLKdJslGQeiNf1EXIi7ZQlyzaCu0KT2u
         O3lKnvuw6VTn2/0wjohtPay99S6qWFfDIfTyqxdpbNZScNglN2GAaMVOyVBPwF0Plg6T
         wJGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=EgemK5cZ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=swjr8RIryY3H7Fqncpnm1lEI7rTUBgDKQKhRiP4hRzc=;
        b=piwe9UbLRkj7KN8Z5HhAb0/KfNVZfEoqgqhhNh4FLoH0O0F5T9LoI6yVmHGFNqjJLp
         SjiYbYNzjgaEcq4gDNe3Jl65wNwnPBO1r9SNfbU3GBrfRV3gjpGFJOMbl4VAB+rU9iFX
         XHeLSTVWbmGXseg9VAAuZxkyLHr9hk22sf9cOukw/Y2QRvQlPue0JOT3XQCxBlPRbM6B
         xTQlcLWlSHwb0ots6mvlLQsPaSQOVgQjfPItaOTw2iHyAPivhx00h+5x+LC/ar3W84I8
         X2y9UdNq4czCELywUHarqRRWG9RJ5gUdUqboDiAX4ZAtrtlEfMqH55n92d8aqBospk/G
         8ehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=swjr8RIryY3H7Fqncpnm1lEI7rTUBgDKQKhRiP4hRzc=;
        b=RMAk0AXz9IT/J6lsnNMzWNKUhs1TmXX/UTPNC7xqh2fVK/N1QYTcxurr4MURJv7+/T
         V4E34rfvYKSJF/IYmIZIIZYIQsFerr6qbBmLjgFoQTZwbx1ESwD++KZdIN0SEvZS2/NJ
         ZDg86QNOHW0urXhQH3KoWoepETSr/S0PJGFioPdN28rSPMcr7N/XGkwM+YzsJL3MMyky
         cmoP1c/fQ2R5cyVV6r52xzJJlbtIjBIRnWzwnKOr8dHUiM7lgDu89ttPcVtsnHe5SnVW
         3IQDbtEYMdnvNXGXZrbl9E5p1vb5CLC96YOdUuH6Es7YKO9iCL1t99xkETGd20vy9fZu
         qTRg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532rxcUQ5yT0tPaOg6JMG38ds/tu/Moq9ECkgqEodq3IMhKMdsSH
	n3KjVjSwTPNoPIrMO6tuHAM=
X-Google-Smtp-Source: ABdhPJwkD0U1W40Ic0awWKEbU+T4qvgCGGtplPPocAAeZxza0re2DS/vSe7HOTV3yYYEMKAe1c2SUg==
X-Received: by 2002:a1c:a993:: with SMTP id s141mr40717882wme.174.1593834347466;
        Fri, 03 Jul 2020 20:45:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:a94e:: with SMTP id s75ls5511096wme.3.canary-gmail; Fri,
 03 Jul 2020 20:45:47 -0700 (PDT)
X-Received: by 2002:a1c:4846:: with SMTP id v67mr41627295wma.175.1593834347151;
        Fri, 03 Jul 2020 20:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834347; cv=none;
        d=google.com; s=arc-20160816;
        b=DH/usIkV+zu8/NnWERVhiFDIYXZ4U8UI6ShO+7hp0F+bFVk6/w+4Fx7UUJCr3IsI79
         2ogTTPF+8EyaNyShCnufDAOfD1lagtRfXb13JaVfxW21obOb42VkxDvoIw01j4XHqP+E
         L62u2JCPF6oiBlb1brx0U44yr0jQfqQNbVeH/oB4wnZqeTsMouEe7ol+2fH7YQixo/Wy
         31f7ccRGyAcW/Ojjv8oBGHctQWXopWXFcVPcn6AvCZzYgJfcITVU/9uj7IE5dun+zf/P
         RAXcmuj2MByn9/QckoYuPilPjVVKljgCHRclOVJAU5tl1i+xNUaRSf7aAVU5Fdsew+1P
         J22w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Br7ciRkToTzu9/SujjXjuCMCVdJ9xhWa8uu/HHCT9l8=;
        b=XVjAKMW4aLI9po+J6CrfRhX9eEbAv+mV9GZVvdUbXkPFLnnkz32EUZ8rumxuRbGrzp
         Y/19vaE0lbRPgsADrwuhjHr1hr5Ycqj26KFcldfDLUxqw9fCTKjknxx76LHtvEJTHpF0
         HQODas9H7KWq3BAIo4yBRR8HI/T9F4lGTrbhOB/ix6l4Ow0r8DfJNep5kaebKImh//Kp
         IoVEoe6gv7dbmjzoGEsXIT7e3mXbpbya3k/lRdplAOswoW550ctEeqzVtOdQnBFW5Bs0
         ElrZtaEXhi9QI22qlCe0i2I5O+Mp+VHQv9pasezCHT1OW+UjZpuy9ZXkSFNV3aH8zjqP
         Uy6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=EgemK5cZ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id q193si149089wme.0.2020.07.03.20.45.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7U-0001Xb-Lc; Sat, 04 Jul 2020 03:45:41 +0000
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
Subject: [PATCH 06/17] Documentation/driver-api: generic-counter: drop doubled word
Date: Fri,  3 Jul 2020 20:44:51 -0700
Message-Id: <20200704034502.17199-7-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=EgemK5cZ;
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

Drop the doubled word "the".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
Cc: linux-iio@vger.kernel.org
---
 Documentation/driver-api/generic-counter.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/generic-counter.rst
+++ linux-next-20200701/Documentation/driver-api/generic-counter.rst
@@ -262,7 +262,7 @@ the system.
 Counter Counts may be allocated via counter_count structures, and
 respective Counter Signal associations (Synapses) made via
 counter_synapse structures. Associated counter_synapse structures are
-stored as an array and set to the the synapses array member of the
+stored as an array and set to the synapses array member of the
 respective counter_count structure. These counter_count structures are
 set to the counts array member of an allocated counter_device structure
 before the Counter is registered to the system.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-7-rdunlap%40infradead.org.

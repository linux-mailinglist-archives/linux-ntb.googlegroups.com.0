Return-Path: <linux-ntb+bncBDV2D5O34IDRBWPW773QKGQEVKXDZZY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 912E2214362
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:30 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id 89sf11042887wrr.15
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834330; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ytu6DGrTFgDi9hrZSru0wQLEEOdeCbW5Je8iLHJHcvCML4g//W4h/LkYx7FugpF/is
         Ao6MBzK6K+icx5+kou3nvqwmBJPg0bUheUJvqBTpCmyQlytVOJP6X1JL6iGs8EXDgbjI
         Pg7VkMTC+utQ+KUFhFy2RGh+IFBtDhCArnNyRVLLuFoWjB9P+yo9OEQ+lCA2Q6UUpOjZ
         ifxipFhxYM8SV3Rmr+TBtLx4zYaR9uytJpsPrtaMAzOcCS3hwIj6CBfeusW0qICT4HjL
         wlTCWH7Vh9GEzjU/5AhMUsnGc8hzV4XzuC46WkIxaLZ4g3dgYBqyMFy/2sare/qnlOkL
         vb4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KzSD0j3qasAkLCo9QE4sYIapKE1JyhEADmmVWKDHh6o=;
        b=sYhoqvNxX/OyFjZVli/El7yH4IVPihJYsu3bXDVBAtNwXYaVbvByAPn54aCcrPVyoH
         7qfG6F47GPjU3zn3q12ipZJxir3cqbmsfkNrUJt6UFGZpEOpg21vSpDayN+s9r+ZasLv
         81qF/T0NlwUkJ6T81D/7iXojjL5e0WWHKjTkPAn99/JM8DjGTzEIaKq0+A5xulqwOYmE
         h1Sseu0z8V0qxUsQeJsyol0c3M1XHu2u8mtxF8fvgHJu+A+GQRBBZTf+8/1hZshLnHYm
         1flTVP2XrUBjRE8mFCfjOL/b7fpvyZCHm11CW/W5hvEIa7FgD/+sZQ7J0EseQ0OCeDLr
         ffHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=B2AMYlF3;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzSD0j3qasAkLCo9QE4sYIapKE1JyhEADmmVWKDHh6o=;
        b=Xq4ylTwYR3RZhtN/+IHQfcz01Hxan18db85N5gSTBIFVpOztKNbBCC0sNb2SzyBxxo
         CP7GqxH8Kw1HMe/85Q8mw+rMqIh0x33yoSgFmBKTT2He4B8RRUImrLhJUxttUocq4U+f
         PXBE+gheV1ha7/xY8/98lmH3Loqg89A6K4XVJt608yuvbX6I/mIIS6nqU90tWwEyTsdu
         dJ7LvzE6BToyLqq/K7vuXuyKM5Lqywm03bur63aiWhpiYZxLi6RBzPe6ltC1TJuE+IdW
         iDJRsEtkCMGc7NBA5XQ1Ur/nYLM1Rmn03XXxQw4grTDWZp9eGO6fISACzug5rGhqN/dI
         C49A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KzSD0j3qasAkLCo9QE4sYIapKE1JyhEADmmVWKDHh6o=;
        b=VApdMrCHE7pkMnoq8r7XJas2wn5UOVvS0FDdreMFidAgz+6kQyCj6Q+BlW5kXVfP4n
         PQDRkMn7AhtpqQBHc0xK3iLXosq5WfScQoumrbvupN52Y+Gb8OvrjFDGZ1jnBAOga9By
         7Is4k4JS66XU0cafklmywlQpXtKanGWTRXG6WS72xMu7NI3osH3ltceBZ0MdEbOR0dte
         hYLKlslU0DxQZ5GCdeegUOkp7LCViuxuccKaDlWiAcyyHLQEwZrjHQv3TF/pPpponqzG
         a9HKPtvgtWlEo0quSYUJWeFZnqQXxlG6MYz2d36d45LZ4fiZI7xFAoetNSvmSgu7lmId
         66Og==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532yAOriWPID4ugOESgSc+DzehoUj853Zw6IjFzei+Z9qR1RyftA
	5WDUtDJ4KyQBkNh14ZsFpVQ=
X-Google-Smtp-Source: ABdhPJwlQBR9tneE7nwSY7iLq5MLAtdp+86ucKrzCEivtkVNpZOQEXphxsDHdU54O68dbqUNiwHKSQ==
X-Received: by 2002:a1c:2905:: with SMTP id p5mr27133758wmp.91.1593834329916;
        Fri, 03 Jul 2020 20:45:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls3030754wrc.2.gmail; Fri, 03 Jul
 2020 20:45:29 -0700 (PDT)
X-Received: by 2002:a05:6000:d0:: with SMTP id q16mr6203688wrx.166.1593834329599;
        Fri, 03 Jul 2020 20:45:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834329; cv=none;
        d=google.com; s=arc-20160816;
        b=aePfRNdeiI84iWbS8eA2eXLxT5aARgHPs36OZLMR2lChBuHRlyRctd3unlPf4OomND
         0fG6eP1q/5XgjKmzq6xBJAoJHfS6HZtbUaQhT3oIcfwaSmk65d9Ipmc0k30d08Ow/xPE
         pMRUZjz6pSycgQ+gzOR6gcq3kKKVkydW+MIcUPZUqVNVfYGZPPxMnQNqwWR0fjD8g+SE
         FmgLdaASq9yL8uaZVXuY07GCZbDB/dxEnPfy3gBTXuNQtWVFOf7saDHAoKgy4Y7njnkf
         mx3ayw3zc7QEc7f4yr94kq7WO4fwvMr57co91nuHxVpRdaF3Zf/DeC7oq2dmUAh1AN6i
         p0vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5uNtA/HJRXzseONyU9tn1hzhV7wWRJZnITuL/3spnnY=;
        b=AUydRa67IVcJGwJIFWJblGBOMBcVBzbjqz+D9J+C7P06FLcN96UEOpS8dXFPQ8/lwt
         QETwEnUH8KisFBax0x1FgcK2Zy4D5RHlC0Gv6N2lA6ih7IRDeuO3uq5yHf+idRKgBhMK
         fsekSCe1jKSW9enlo8mX751qmhYEC3YxRuZkX490cv6vGB/h169CMjHNLIJ/pGjRwv5i
         2bFsupEwFNJrN1m7dRqF3129ybGb4oCeL0bLNj6GF1AQ7npOlNXkrTeDa9JfoNp3hwwb
         +NlPg8SeuLGjlrG8eZhp78bX6ewrirLzfS4Ouca5X0LLATze9dSBwCeShFN9WO7eOFxL
         j2hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=B2AMYlF3;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id 14si778834wmk.1.2020.07.03.20.45.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7D-0001Xb-VA; Sat, 04 Jul 2020 03:45:25 +0000
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
Subject: [PATCH 03/17] Documentation/driver-api: firmware/firmware_cache: drop doubled word
Date: Fri,  3 Jul 2020 20:44:48 -0700
Message-Id: <20200704034502.17199-4-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=B2AMYlF3;
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

Drop the doubled word "if".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Luis Chamberlain <mcgrof@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/driver-api/firmware/firmware_cache.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/firmware/firmware_cache.rst
+++ linux-next-20200701/Documentation/driver-api/firmware/firmware_cache.rst
@@ -27,7 +27,7 @@ Some implementation details about the fi
   uses all synchronous call except :c:func:`request_firmware_into_buf`.
 
 * If an asynchronous call is used the firmware cache is only set up for a
-  device if if the second argument (uevent) to request_firmware_nowait() is
+  device if the second argument (uevent) to request_firmware_nowait() is
   true. When uevent is true it requests that a kobject uevent be sent to
   userspace for the firmware request through the sysfs fallback mechanism
   if the firmware file is not found.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-4-rdunlap%40infradead.org.

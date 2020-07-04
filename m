Return-Path: <linux-ntb+bncBDV2D5O34IDRBYHW773QKGQEQO74ADY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1415C214364
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:37 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id f5sf34303839wrv.22
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834336; cv=pass;
        d=google.com; s=arc-20160816;
        b=010mmot9GLLpiShYFXkaAly6v1GWKGwXfQ+4iroEjbMih6rTcOaLjE1dRiwN8gbyST
         IWKCtJjrFlbi5Vc+hP4tafc/y2W3bfn5IbIwekZB+rC5pA2RC9ztNMuJw0HG3Vq8GnAl
         cqx80XOWlvZjMT1bluRhsA11S3+Wa2UbIgeOz/fwF6d6YcurOqZ56xUiczFNtd1d1tbD
         iyGuR1kBVOzqMg9W/bwP3g5oDvQc2C6AeSu2Vhzg40AdiL8wru9CpPIG1G1Yj1EX54Zz
         rNnfBrmJ/JmpmrNNBeKdv7c1DxpfA1EE+CiIHS2DasvCieOsAAUULGehZdQe77fuR0Cs
         mdcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pz1zCP5YoksS/1BZP104nsRZAXHCBMOCDNBRYaS8P+A=;
        b=fNcqScnvQsi42uJM2DvjGmFN1R1zSCC3DrQmi0d3xcKQQsHI9eK5cO2Cdmnitz7Jtw
         IhmnZDi2gmUfzykKhHfyS6P+Du8aDpuZlfD3Dk+fT3Nm6T2xx6cu0zAA70lCAD7U/els
         oQhnxy4f7Xolmp6RM9456jTmP/XLbKGK9e93BPnqWjVcG2ouPvrHKBFu8f6dyYAngD0x
         Evqk6KvE9Jkuw7M0Ym7xEvDPKMzZAGT1u+QD2w4pv4azghDakqS43DCxAGqOzacr6G7S
         sC18rT+xRe9SmZMMW3jpmxBFZI6hkdikG3gEZ9MzCc5HCD6nbrVyqZVJdI/zaFBwBKPe
         eAQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=bB8P99UQ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pz1zCP5YoksS/1BZP104nsRZAXHCBMOCDNBRYaS8P+A=;
        b=EOjT9MserzhkBtlN89IG4axk5DwpvsBklIgP9IMdOeTrIXLCMjfcNokle1vZPSWFsR
         qzS8RKQ56bgTyfPlHYOWhah78C9mVRdWM+ksfYa97gz9j4n/OYGlIeSox+DeBXer1xL5
         izqCjLnaGLCTmwsS/8NOZHXgUC3y0qVG6HtakXKdXg5l2u27rW58TI+YfZ5JpiEWjhWc
         GuYqDvRS0hGLFDMaq9p8rfliTLq9ZLZdqvVB9DrKGLy7HkyfkIyduJ7cxkf4DrvMRD+w
         D/2MUjKYEqeqDJ/1I+qHV2MH2fAwIjiPMTf0Q6pavzB6Dg0qrmNpLZtqfxMohkXwWbee
         JAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pz1zCP5YoksS/1BZP104nsRZAXHCBMOCDNBRYaS8P+A=;
        b=o2qirxDknv/CJpZJIzugjAs7KU//a2zvbtkpFFWdrVk7HCVtva/oHJ/bfBbYaC0oKR
         7uQQHOnqFzghD3oSjjvHm+25q7biMoA3j3Ih5wFUufuwgGZJeZpOuHRAoVKXyF+pt+5x
         URUJDYY0pZLm4PtcNTp2Ehxv3XS7gBGyb8bnGOqa2JlJ5b8Lwh2+F9qUwfjVkPT7OsUw
         vICebOa4clT7ofIX8/p0zcCnwYq2igh6MdvbtK5aGbdACdoVycWD5Qz4TKik7BDer2y0
         0rqznCtZffftofPTBXfmBuXd92GlneTOreYRJrkwESfKT4cxhACutoloGl9MetLUFQ4s
         SKNQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530AWklTXdAx9X17gqPanYWXben+XdyQmdFxNdXPEFsmNhNGfUPJ
	cag+ncgG+y8hVuGj7YrIlVs=
X-Google-Smtp-Source: ABdhPJwVQO97l65iyvfb7tashvpWIsO6xQZ8y4LtdR/wA4HIDsvj2z9apNR+F0rIvAYoj4ZIL+3urw==
X-Received: by 2002:a05:6000:12c5:: with SMTP id l5mr42602849wrx.219.1593834336844;
        Fri, 03 Jul 2020 20:45:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls3036304wru.0.gmail; Fri, 03 Jul
 2020 20:45:36 -0700 (PDT)
X-Received: by 2002:a5d:5549:: with SMTP id g9mr41652028wrw.419.1593834336475;
        Fri, 03 Jul 2020 20:45:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834336; cv=none;
        d=google.com; s=arc-20160816;
        b=nSE9fL67lmxtGlw1sbjVSl3snjSFl98NVQO/q2InZgc+YlutYjE5LD9s4/1ofDUlqo
         BmodmYXT9XPCqQFdD6r1iIGBu0LGyJ3w6TvzIBlx9rVus1Cizl/O8vOIzRjloxwu9YK9
         REnU2W6I9V7r3zn4RtUD9VpWG/kec3TLrfntYxfhplqc0pa/7+dxB8DfSq74gOFwA63q
         Xa2UtM//UN1oN8MTGNOt2Ufmp3tCKjtVPXbrJPRdZp/qxG5fvJpdxpVuNxM0aJ0exzmi
         7ndTkGRlukhWBA3U2FfyXGs2rYY9gDAirbxPtDZhORshbgdcFdqzriiODh2b4B70EfPv
         e1VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=COadqeh7uXIXiMC1HdlQrl27S5WUVALD05j/f0udySQ=;
        b=izR5LIinGQm3TLptGwjTsKDXaamq+I5oTEoIvKub15KUsoXppfX1xwlxfH2ygWSg6/
         vlf+frtRj0ZZXHrlx/hzPe+iKp3TQ/AMmC31Klf9nZMfPC4Z7UoEFFOU6TBI6/ucX1oO
         PNIYy72JLkyQmiEgKKWPLyBd9B0Jn6GTwiAAkePSnJai4PO2abelmQLhAtrENjBhwrmz
         wh1HbRBdbeubGy/6PPAUGzTcA+cIlXpKX36QYO9X1x95CzxDsCmJ4QIc0imkr5hcrrtO
         t3IO6Por5qKij8SVfjqKYx+Z/SqPUXWbSR8CTnXtfFrRouBtg6IeLVp1zdFtMDDHVwdh
         Pq/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=bB8P99UQ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s18si661859wme.2.2020.07.03.20.45.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7J-0001Xb-9C; Sat, 04 Jul 2020 03:45:30 +0000
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
Subject: [PATCH 04/17] Documentation/driver-api: firmware/direct-fs-lookup: drop doubled word
Date: Fri,  3 Jul 2020 20:44:49 -0700
Message-Id: <20200704034502.17199-5-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=bB8P99UQ;
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

Drop the doubled word "firmware".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Luis Chamberlain <mcgrof@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/driver-api/firmware/direct-fs-lookup.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/firmware/direct-fs-lookup.rst
+++ linux-next-20200701/Documentation/driver-api/firmware/direct-fs-lookup.rst
@@ -24,7 +24,7 @@ available. Stuffing the firmware into in
 however note that using initrd does not suffice to address the same race.
 
 There are circumstances that justify not wanting to include firmware into
-initramfs, such as dealing with large firmware firmware files for the
+initramfs, such as dealing with large firmware files for the
 remote-proc subsystem. For such cases using a userspace fallback mechanism
 is currently the only viable solution as only userspace can know for sure
 when the real rootfs is ready and mounted.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-5-rdunlap%40infradead.org.

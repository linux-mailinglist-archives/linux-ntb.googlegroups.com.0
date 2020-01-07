Return-Path: <linux-ntb+bncBC6JD5V23ENBBOHP2LYAKGQEYZVNP6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id E8922132B9C
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:54:17 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id h87sf33039ild.11
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:54:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416056; cv=pass;
        d=google.com; s=arc-20160816;
        b=OJh1KtX7IvkPCeozbWj8Q83VM0KaQymsY+z7FWQP3DMzWa/Cv8kOvDMsN+tlNhmgU6
         J2mcCnl6AuYQxIi9DCJjDEEFfLLKLS2d9pWq9kJANehnh/LiXZZD+1gVmdR1wKy3rcz6
         HSAL4n8/9jwnANb9mn2584VAR2iFG3ZyeaTTeMwN7HwVRvDxBsED58B+YSIPwtQRvvky
         73nChWI0LkQQ77hek7zvuZToLmR6pDe+FhkpXB8uH4VlUNL3dX/keQVWtTFroKloIp0r
         L0fR9h3iIFqEfxacydkdM8RYr3LU3pQGlzUxMtIqUGA4/lgJ3fwjdelrRK5oKdiETLsN
         Cnqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Tb08jaBNqSzI4rm7RKT7WrDpcZL1XLPvGogNjullOsY=;
        b=cxHKp2xsl9PT57U1tJs9JgAsY6lP+WHkopM6e55hFefvo3zOn0aypktk3fygfNunAV
         tfANVGiqRIdzNDdohwaFeYbCcIom1VPJVedZSsBZ+bdWjz+dSMte1UhpuzoeZkuKFkXT
         xCQ9yuRgrHaGiG4Lhcw3d6mdNPJ7Hog1/P+Z9BTInbg4MSJQ5Vx4x+ijLZuT2L22oT8A
         wn4Eyy93gPearRNneAbkcuZ38Tpj7lJ2C43TN451GyXzDHZMpXpI+Nw5f22n5oHWDlL5
         Y+7iQzX8Gxw/ygBWZjiYnq/WesvwZg8IEqgF5ZU8Y35qRs8WBkykGJLJOsva+VA2SxQP
         2Cag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=odHfTW+8;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tb08jaBNqSzI4rm7RKT7WrDpcZL1XLPvGogNjullOsY=;
        b=A6hhh0GC+FCzCXemczckvcYDLHOvb/wYOGBgB8P1eXVOsXGQDyaPn27atcGlCH1fV8
         PWCFQAYsSdfJIPsKvQdnnORHS9v/vVAPovRtNFFRykdnLLHfd0X2XQSByZkmLgsbacTc
         ie8DX5+hAmlX0pZX2tnFqRyWcmHXeOPT2Wlo7HztHWfvP53IBugWS/CqyzigI4NVgXKw
         Dsd0vXv0hMOSEr9guG+NNrJeVHt9PxSpphmuHtbMrzHJKaIuVgiYR62kE9nPvnfXlm/w
         j9lXeshRpqwWwnmzFci608e88DWE1e4Ry0tudsonjKfyrI6KdC8VhbjbX8KVqGtPK5SK
         KAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tb08jaBNqSzI4rm7RKT7WrDpcZL1XLPvGogNjullOsY=;
        b=A1PkC8R52n8gtdWt4K5dzRjYfd7ZUW8bEPoj7FNIRPdyc8RukvjTBXprH/VVtlAJio
         ijTp3DQ6gXfvHIMiGLNdP/kDZ+1xy+Sjxp1oLWDoxU3LZ5NiphrzYvHJQ+Vr6tEMh0Y8
         HcXRfdorGfNberbDJe7CuUdts/3tkGQ3fRBoNm2o2eOUixbUoXrkO6WaMGZsDe0ZUaak
         dAPF8pMfZgx1GFG9ooZd1A9i/10CDQTT/Hqmy6UmuYxDAtlHdPKy/MvBdc0G6m7MPPEx
         j5N10yrv73WomS2lEdqln+gI3Laz0YiCWdYA2sqtQl6m94vDQDsBmkhme+bTBFfw6HBP
         jEeg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX3SKKebAVFl8rV6Cf0vxaQdvYBFh5ag+2SROl3s41tx57Bc9PN
	kZwp0xyR2HbrpPp5q80ijTo=
X-Google-Smtp-Source: APXvYqwlIBiirFCRXNtrSCb5+guTdcES0c8p6lkJtEwvYqy2bVyqyiZAF/pLo7c61Iv4dcM7CJf6UQ==
X-Received: by 2002:a02:cd31:: with SMTP id h17mr408154jaq.94.1578416056781;
        Tue, 07 Jan 2020 08:54:16 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:848:: with SMTP id 69ls7876jac.13.gmail; Tue, 07 Jan
 2020 08:54:16 -0800 (PST)
X-Received: by 2002:a02:b703:: with SMTP id g3mr380083jam.101.1578416056427;
        Tue, 07 Jan 2020 08:54:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416056; cv=none;
        d=google.com; s=arc-20160816;
        b=PWZzC2AeLNQmoZqnEWxYvE7RVZY2lNelttw22Mu7uPdCO7CbG/HBqS3IwenwyOVBjM
         sNymAT8VKZzScMKKTxKdp+BVgvi0eQoqQmGOnZFgnlCw0yNFBAdJsBYwht4P4R8gFsRE
         c7kVoVW6Zd5KjQC0uJfvP9yQiTsnlLm4NCdeW5NqlwS8uT6l16XjUHCVfokW85ZcKZlz
         tz22yJjhRCOi4NkuiLa7xEfV1hFB2esA6gm4TfQHxmkAPIE8oiBhCNMETf+UILHplOHB
         UPP3YD2DcWmlzIj0sjhT5gqixc5X6NJccZbEMePHBi5tno32qbwTc+WmLoZCRsq9ljDT
         QJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=67T+eKkN88izKrOaIgjf9Ku9gw666YMrVxBBoFy39QE=;
        b=V/1Z9aamAr8vfO6O4AC9bfkc5sTaDg3+c+pZEKcXjWgw7wj8J+ZiSwaOYxIY/KRDcc
         XIQYlQxA5BZz8/9Rz8Via0VCgcLiB20bKZhWxehCa3Vk4/YYOJN8ti60nf88Ua8yZL7u
         CFGEQvWhiZGEZf1JZhrrCSFNU1xnHYSkbKuzppP91GIOVqaAgtVzmvubOtQfylon7XRH
         r+JM4zeFeu3QPX868lZQGfo/4N6A1mfG7T72dgvCJs5piOHCgr25atpxmMyplV5wi67p
         bl/R+N/SWNvQISP8pud0ijrnWPVQZhmmj0ni8eLqpkhI1X2BBGgKgBH6A17fLceW5cvJ
         7nQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=odHfTW+8;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si12822ioe.5.2020.01.07.08.54.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:54:16 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EA3D2073D;
	Tue,  7 Jan 2020 16:54:06 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Vineet Gupta <vgupta@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>,
	Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jiri Slaby <jirislaby@gmail.com>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Dave Jiang <dave.jiang@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-snps-arc@lists.infradead.org,
	linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RFT 03/13] sh: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:02 +0100
Message-Id: <1578415992-24054-6-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=odHfTW+8;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

The ioreadX() helpers have inconsistent interface.  On some architectures
void *__iomem address argument is a pointer to const, on some not.

Implementations of ioreadX() do not modify the memory under the address
so they can be converted to a "const" version for const-safety and
consistency among architectures.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/sh/kernel/iomap.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/sh/kernel/iomap.c b/arch/sh/kernel/iomap.c
index ef9e2c97cbb7..bd5e212c6ea6 100644
--- a/arch/sh/kernel/iomap.c
+++ b/arch/sh/kernel/iomap.c
@@ -8,31 +8,31 @@
 #include <linux/module.h>
 #include <linux/io.h>
 
-unsigned int ioread8(void __iomem *addr)
+unsigned int ioread8(const void __iomem *addr)
 {
 	return readb(addr);
 }
 EXPORT_SYMBOL(ioread8);
 
-unsigned int ioread16(void __iomem *addr)
+unsigned int ioread16(const void __iomem *addr)
 {
 	return readw(addr);
 }
 EXPORT_SYMBOL(ioread16);
 
-unsigned int ioread16be(void __iomem *addr)
+unsigned int ioread16be(const void __iomem *addr)
 {
 	return be16_to_cpu(__raw_readw(addr));
 }
 EXPORT_SYMBOL(ioread16be);
 
-unsigned int ioread32(void __iomem *addr)
+unsigned int ioread32(const void __iomem *addr)
 {
 	return readl(addr);
 }
 EXPORT_SYMBOL(ioread32);
 
-unsigned int ioread32be(void __iomem *addr)
+unsigned int ioread32be(const void __iomem *addr)
 {
 	return be32_to_cpu(__raw_readl(addr));
 }
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-6-git-send-email-krzk%40kernel.org.

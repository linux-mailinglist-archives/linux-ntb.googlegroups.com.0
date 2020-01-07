Return-Path: <linux-ntb+bncBC6JD5V23ENBBJXP2LYAKGQEPUKTGQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id EC79A132B8C
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:54:04 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id a2sf138474plm.2
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:54:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416038; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tr6KnYspRdhr5yW+K3idzdtOWsUe7FuzhrrOCZxwe23bv1RxWpwHGz1GzMSKG+phf1
         +OZabgUFvUGUDCP5L3diFVOHJl8ZWRpl0uMT+qebDxomuC+eTyOdYTwmcyLYW19wbg49
         YGGrBRTv2Dnu4uiRfgfUznWGFauWd5ySBwRYZMsxtOq23wPCduxISUkj0QJuKjdijSe1
         2uWY1N0nWTz0ueq/ZWyNkPh0EMBFO+I+mdg0YMyaNbNizkBZV9dYnTmSAEfqttO3tHZW
         TSL2P3afpqYRQMpXWvkKInHLlQ5a/lQUY2NHXhXk7shVrdaPgnnJwEQjRizsB5Dm2lmA
         RP+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=zXCh3AU2oskyyQ0aB2c5fw8GL/84at2tHGb1xPPaCO0=;
        b=uGvrHp8K3kzfMmiF/RMXKCcHgMRNKqMSW9qa1nCOYT2T1XVGAVas8ryWwunQgUIiI+
         9r9mOP0qhRCJmTMwvP+xmBQzrpx39bE3xeBXyGVXEGp9Jom7O0IjmYB2ujVCXM4OBbRO
         q1Db7cXV9d5A9WhscvvRIpdIJktnEWFaSQ7PYhwKxzCdSdGkgnlkJ+3o//aaWWS1DW6m
         M0tVtpqwiBbSMijzWDiemVR6qE6nCVUlQSfN3L4dbI09gSmT/p/a8x4PJy1T7Pq5U+Tt
         DruhsjeLLRdlhRTsJlRHLeRTtBao5+zRZb9dcd6YVFtcorP/ts0fx9M5zJ51dblLvyu7
         zY+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Gq3wyr2N;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zXCh3AU2oskyyQ0aB2c5fw8GL/84at2tHGb1xPPaCO0=;
        b=baeLzcXzPBmdNwBMKDBUv1j93kuYnOzVr7abOyKonLexFJ8obofnB2nx9iMdawFQJK
         aH+4eRDaCvr3IkU/iGHOIMNOQtjxhj6Auq2VLwcZ4NikNBiVbM22oXm38yvRi40800iP
         SsLbXcuVkBUxPo23VS08kscGL2JgIO0FVYj7GnSjsLq+3SS5k/XW6ujMQtSbZL47w71R
         IlYpBumldE+8IuJwjuHqWJgTcR8foNEv963Wb5wFRmjf5+orSQ6zX7HjKA4J+m/b254P
         207XjJntxAd5qTMNe5I/TxJsWoFyF0V1C12IHL7Z1YwYql4ry6qeB0H2sPMcLECrEcvm
         LFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zXCh3AU2oskyyQ0aB2c5fw8GL/84at2tHGb1xPPaCO0=;
        b=kobtbYXesCyWUgladDzxREHa0RgrWRI9Fkes1HBYS4aFD8EDx62g3Soj07t7J9ogIU
         bkt6YNMAL/R1hqiEZhlJrl4l056RPu4XP09rokOp2SZsSF5LVUi1LSrl40f6Klxg0xvw
         +WlK1m9P4gPAqUQmSVCm/r6hkrseSGUWGKIramh6yL6ePrGnhDnV4qY6wKI3iwqC9jyu
         Uh20poGC6kA9Ju6yHsEmFSCc8/Y3Ng+pNVg5ITdmslMI/TmfYnDcTNXIzLpRyyNHiheI
         /PkdASKZsTs0PXiABSsYflKJn+uDy4vqn0LNWwifXFhWBhJt5CJPfo4Z3mN+XxKR8QOL
         FfUA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVfx/sq8byHQZwfI+FlGBCan1x6eZB225yqbQS4Rp/SDYnq9mKl
	6DE3SrDWSe14z3SDEMJY5XU=
X-Google-Smtp-Source: APXvYqx4wYg87NOVHjHHae4295hmL7Lgz9gxmxU8jmpCgwh51txxuap51tgQTxpyulAJW1lZbeEuwA==
X-Received: by 2002:a63:2355:: with SMTP id u21mr337508pgm.179.1578416038092;
        Tue, 07 Jan 2020 08:53:58 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:9408:: with SMTP id r8ls67348pjo.2.experimental-gmail;
 Tue, 07 Jan 2020 08:53:57 -0800 (PST)
X-Received: by 2002:a17:90a:b311:: with SMTP id d17mr699944pjr.17.1578416037706;
        Tue, 07 Jan 2020 08:53:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416037; cv=none;
        d=google.com; s=arc-20160816;
        b=LCau2Yc4nfUXgvyGWBs0EYPrsbj9eYrPBz9R8SZ+THqUR8gVVEqN9RU3pJbtM5MHRs
         xIl9YOnqRiynF5I9tBAzAE8dQsZca1BeHsmu+uH+RtzG9z2/TTQLCLGNR10oe4OC8OTB
         wFNPvhIyH94anYwS4KD3qMQu9I647s6jVw2LahMwPEg/v/MsXj2LjBQD7a5cb3LOtL8O
         4z5q5mZzvsyTqZFjVKz1FN4+mxImoS3ek5REcSnx68w61B3Qhhxv3SuDDf1DdMohFS/z
         CEBsZVgoBii0JE+gSxHEWep8qyRLwTIGs/ZXejUBVSeBeHIKzz3NpmzaaB5UrJWoKS6i
         2CJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ar0JumDZ4e2toLdLQzDgHHDp6FtX8DaXVopdtfxwLoE=;
        b=ig7W0ViiXxvL5dyIUxMiYFxLsE57mx0tNhZ7rp3rYxsVxCu/TU89Oo6QYZCXuWmH5V
         dpNdk7eJUOVzfAIr+bSSg/c9L/PVegMIUiD7LW0/HBoLvp7ZXudutNlEC2kvHjQR7ele
         6tEhhnmkHMRLM+umekzmj0y9Q9AjJvE+W/Xy2VrMEg2IHcZSDH7dywpXT6EMJVEUo/AH
         3Idlrd+3aH+mamPMmTu7/zHTcbIXmA5xATs8DkisZ7cnAgF/QLFZUGH6ub4h/96J+Umg
         8i8Q9C1842vlTgA7Oaypla9QUT05nv7p8ycUrADDhzjm1u7I8DqrNoj2J1qKw625oV3C
         5Nmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Gq3wyr2N;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s12si19516pjo.0.2020.01.07.08.53.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:53:57 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E220F24676;
	Tue,  7 Jan 2020 16:53:48 +0000 (UTC)
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
Subject: [RFT 02/13] sh: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:00 +0100
Message-Id: <1578415992-24054-4-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Gq3wyr2N;       spf=pass
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

Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-4-git-send-email-krzk%40kernel.org.

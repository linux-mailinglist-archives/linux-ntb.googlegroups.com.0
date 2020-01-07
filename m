Return-Path: <linux-ntb+bncBC6JD5V23ENBBUXP2LYAKGQEWGQWQSA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E9D132BDE
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:54:43 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id n6sf41068ile.6
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:54:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416082; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQ7QCkE5N3lzSQgGEdFt5pWjgPYiKItS6MiiRJl65+bgXo6wlVEPELF8OepAaeM5RX
         JiV1VvRr+Kmq4rQ+rAboNtj/mUkMokCLCNXUp0AOTJhZnolHsMUxiuJIV7l7L3cc5fbY
         4VsGw0DPwLSuxj2JwsJnQKyCTL+PctmohMx1DaTQiaOKOAR2lhTdSdqfFQtoPrW8GCO8
         h4FX6WlOPfbcUg2CvTAFKVWj9PosLyy1guFol6noI4ZLiua6dXILAy1wfdPeKDvaX+Pc
         qBIeUhKYRdlmtj3OsrR13OjSgeONXrSreewS44ysxC6fDrR9rZCefdRzArIiAaGwGfae
         nnww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=fHIxFB35lJsJNwf5YUgBgwJ8plr1lg9+xfjVn5Q8LeQ=;
        b=wTXI5ofZ/w4Q7ZedLijSU1JMvh/U+YgJXO1BYbHUDbztNQeL7M0dvVCozSd9Q38Cjb
         ymQT6drjBTPDphsW4fvf/B1zZjQJ2WuI4aZ0f5btkHqywsGGRKf8jK2y9C9bTrx6TGWw
         6JxP2mBp4ruS+OEkGUVptuaZE3pgSSSTEJFlX9G325qU2rVOpT+eof1lh6fHaGpesZBV
         CuUTjruWFCpy3Y/unc6WWjFY+v5Kst2x0FtcqwX32kA7AGWowPPgHewqkhSr9hJRUZAk
         EU2Qjljtu6TMsYIOXM/6XO2STGDSAgV/MMv2q0SDygmoVqjfrju3EWWppX7CtoppipCa
         a3sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MyjPtgAp;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHIxFB35lJsJNwf5YUgBgwJ8plr1lg9+xfjVn5Q8LeQ=;
        b=G7Fr0CFs1dNHWKuXzy4TTasuRH7E0+y7W3jowH2TpAO7KNKr4ewAqSAs5s9UadaWVr
         3LnuHIKpMBlLDCasPFOhZ1hiEPZ73U1PaYPtKT/WxZjJblm2yqGk3nntPHCIo3rVWQ7g
         sQT7iQo0s2OOGAJu9wuYjbEIFRDUgjgrqaKahRNu0Ttr2PaQuLPzOxxUaXTJGvJo4T6H
         yAx4E099PXGbsJ61tbvu60plzFopnmen2rFt65CPhxh4RIK42IKhCOvrys9AlIUzYRHC
         e8YZ/q3a2jtgzIfJxu+hdWrIM4UrBUhihZIeYfWv8DTxAKyyHbVdsd/026HZVFMSBYTF
         a4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHIxFB35lJsJNwf5YUgBgwJ8plr1lg9+xfjVn5Q8LeQ=;
        b=rlF+/r2emirbsCwowD1EOwMHfpMVzZ3he5r2XqxnbhNeXaxwZjiSM/k0sErWTl1bvb
         xJLVFLafZWbwapppFnZkU1kwxMtRxwp05g4MAKlXTBHyG3lWSvxQ16OBB3CZJ/R+IoHt
         eu46LoLQCWjfonwTswtWuOBxFJ23ELs2k2NRU7H4WD3vgu89qVnHscYGgaF8LI5joFWd
         Zbuem6Tcu+7CPKwSU3jTL1HsBSvlmDMNEObd1odkvkwsvANtDa3YZ0hrAdFGBGvX7Z5+
         3XNzPzO7yvRlC1kgKTgOFd2RcfCwMNkGV6fp9DrdzhVmxq/Ngp+1znXBLbej6X0gAnJY
         VH7g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUDsknGqkO7Ul4bfUbAmD4GLFdhtW2vkr59FhkO7w3xMlruORUh
	HFgLB+vgJjkv8lM0jcbK8Xc=
X-Google-Smtp-Source: APXvYqzh+xhvPV9u8eqksOo4BAFaAhb4PIGmuVZ7upwCX4yrO1N7WgBTw5xPCFnVK+EwjCUKNuZtkw==
X-Received: by 2002:a92:15c1:: with SMTP id 62mr24148ilv.216.1578416082110;
        Tue, 07 Jan 2020 08:54:42 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:ce86:: with SMTP id r6ls53110ilo.13.gmail; Tue, 07 Jan
 2020 08:54:41 -0800 (PST)
X-Received: by 2002:a92:b712:: with SMTP id k18mr90214741ili.259.1578416081827;
        Tue, 07 Jan 2020 08:54:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416081; cv=none;
        d=google.com; s=arc-20160816;
        b=meo5q6QyRrcweu+RGNHRrFQFZkTKECV/S0uERsnPRcs+1npodejVDaFC345arRmZLo
         4YGq++EzQyK8QXanonHcK6Er8aMX3FaibFBoC/YFnnnryDSOKaPZnq1ff8MLI9oPGg1e
         PE2FOaoE/snXyYaLblYXfNL9sC3/3xtUlPJ6hpdbumnK1DPt/jue1hqk4lVzrFBJlbko
         bshQzjCijgMKOSWY0h8JOB7n9TSIrNOc9rFJMEbfzfbc5hCRj9ZJ+K6jQxz5UP7E4L+u
         NZHb1dP2hDcgo80nCPT6FC5rb54J6cNDP+oyt0hjznmbHlsNsBkdiV+JeZRBYYc75sPc
         hMeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=07KcwXxzXkAH3nTG1Hr65r9/NqYBl6VuiH2SaFmm/xI=;
        b=d288Wp2ByEwpi889uKUjotdTvKcSLIsMXc5GpqXRlPr8I4OBxJPeoUlISrKlG/BTaJ
         uIRa62tpq5nl+k4OYC5mOesXVFw250jiUOFefzL9i8YN+UT6RGY5WyWNwlYmYZmfZUpv
         L/TToc2JrlxnGvd5E7ePtfkrxdZs/NxoJX9rUOk3QCq6lCpRTbQ44p6I5kOG6rQ0Vimf
         8tIWW1ZvedbtvFrvC7pIWxntUid09wO2RIH/WgckoBZleMW4NDoK49kd4U5XrXGQIZO2
         8BOyq1LgZnMhJKOw1kl/j69/kFW/OGxyQf+hb+8sRPmwu/zW3BkYDbIQhGFZsr1Yyir0
         1VPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MyjPtgAp;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i4si15608ioi.1.2020.01.07.08.54.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:54:41 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E4BC24676;
	Tue,  7 Jan 2020 16:54:32 +0000 (UTC)
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
Subject: [RFT 06/13] arc: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:05 +0100
Message-Id: <1578415992-24054-9-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MyjPtgAp;       spf=pass
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

Implementations of ioreadX() do not modify the memory under the
address so they can be converted to a "const" version for const-safety
and consistency among architectures.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arc/plat-axs10x/axs10x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arc/plat-axs10x/axs10x.c b/arch/arc/plat-axs10x/axs10x.c
index 63ea5a606ecd..180c260a8221 100644
--- a/arch/arc/plat-axs10x/axs10x.c
+++ b/arch/arc/plat-axs10x/axs10x.c
@@ -84,7 +84,7 @@ static void __init axs10x_print_board_ver(unsigned int creg, const char *str)
 		unsigned int val;
 	} board;
 
-	board.val = ioread32((void __iomem *)creg);
+	board.val = ioread32((const void __iomem *)creg);
 	pr_info("AXS: %s FPGA Date: %u-%u-%u\n", str, board.d, board.m,
 		board.y);
 }
@@ -95,7 +95,7 @@ static void __init axs10x_early_init(void)
 	char mb[32];
 
 	/* Determine motherboard version */
-	if (ioread32((void __iomem *) CREG_MB_CONFIG) & (1 << 28))
+	if (ioread32((const void __iomem *) CREG_MB_CONFIG) & (1 << 28))
 		mb_rev = 3;	/* HT-3 (rev3.0) */
 	else
 		mb_rev = 2;	/* HT-2 (rev2.0) */
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-9-git-send-email-krzk%40kernel.org.

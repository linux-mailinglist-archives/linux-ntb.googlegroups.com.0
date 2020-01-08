Return-Path: <linux-ntb+bncBC6JD5V23ENBBSPM3DYAKGQEBRMRUGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id B153A134C86
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:06:34 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id 194sf2653212qkh.18
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:06:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578513993; cv=pass;
        d=google.com; s=arc-20160816;
        b=wDYtCWErH2PnAWfvKn/IYm50j/E+pTSDK4JcXnDIfGchX+JPMbI+MC7NLH8qt6z/5t
         BOQE+qfMgnJ4fYJ7DRLVsXjzsMwgDUe5wXjsFqy2HGoeo7jcG4yWyLrmULaCIucu9Nha
         fpGQFVTPYgbZoUwLVj5hes3fp5YGjgaVuYXe07kM4ArAEMJnIx9FrAZ1PxXijA/RCA31
         0MooebsC1hgpIIxLdPuYhwY1hF+Vp5Q0biadzRGcnCZdeVt7kKwNMJZ0ZT2b788rDaPZ
         T35AZrI3i1omOQsV0mklJB66FJB+VkPg9o5NgwHUE/LnWza0Nbo268Is3HpYegBGlzyv
         VdHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=zcWn02Kths7olZntRioBDvHM1GzTEMIj12kavg7FK+s=;
        b=lZ+H89xwwwhM+Ec/SvAKpMnQ6/gE30diShH/d53el/bUrb000Z8UY1ydHJeViikY0d
         l6zNOBNfsVchXfoyy75niPxCquRxPCqor8HHVfxtv9pZzu+7r0VHuZV/owK0p1MktrDa
         Xl2eO+UpBMbEb+1ZIv88M3igtIsrK6FAxRgpjMd5khM6k77xpJmZ+ybtTBSTFh3UcgXL
         kbw+4UKW10p7cBWMtACM6wM35Xu9dTTzhPWzqXBvun7og/kDbAWI52tR/XjshIcCIB8V
         RZEfaKi/I+sPq9wi1FFE3RJt4s166/UKnlyzH3TJKRa1E1FDsTINOy6qfTEDbMfC1jjF
         K9+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m+nvoD3l;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcWn02Kths7olZntRioBDvHM1GzTEMIj12kavg7FK+s=;
        b=WBkZb4PqqBTOM1Oerpyz6fIvburj0zWk1UPrjhglWZxl0OVeSDVdgMX9tz0G/xEuO1
         noEusUlG4uPW5uK/ZPfG/+JXLNPkUTuN8m1VXm1UTDZ1ec1Vol09rDvmkP2Yx3tUFKgA
         LM7yyrS/DpPKkTAHGE7YklANE9eqUQqIinVgl2bug8TBVw/JhDsEGVdO9iPg5jHkH4mO
         0PAQBRbToY6fyamcUNu5b9/XxNVssiVaT5N+TZhTckF5dqhiZLC0Tn88zzRw2y7zW10Y
         Uywji7HMQiHxPKsFONEy+fEV05k6cFXVWykvWkAa4kxSPdyKbbcqfngUKUeIxgzkMC71
         Or0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcWn02Kths7olZntRioBDvHM1GzTEMIj12kavg7FK+s=;
        b=ZWOXBwK2ENCOxOWmveSCZb4ql0MNiCqTMHQmDxTwTcsNFhoFNJdZQJjeOzYc9Fc5gY
         P37JoosqfqwpCgJwQkO8Rh3iAPkK14lV0ENl+eisof2WjnxjcgxW7OGOUxVrV3QgBPRn
         2LM+G2LhRI1tY5KQRe6Qxur5EdpBCSXJ/m4RtC0uGACONLl503OKJhjLMv6ZofEUY3vq
         rhpBS9bw3PXLPUa++8HzIMj5OCpWtO4z/PJIVUwbnyUdHPwKNABuK3Dfm12/0MGIwks7
         GmYaLLbhc24t/DQoZSTOJh1S0iTXI9FbCam7Pn0Ep34K1t+4K4aGmcgvGr1+egoK/vwF
         5p5g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWH0wwDee5/N8/g+FRvtiVT+nUu0WGulcFMlzq0YoXhXvXRGnME
	Lkl/gJqcquvfNnWbLhEQMac=
X-Google-Smtp-Source: APXvYqwsqdyEBpLY68PsdKgTIEVMFZyJPIsSgYaQo2Mi1D1Pl8silsp1zq6yD8PF1w2CEc4kvpQv5w==
X-Received: by 2002:a05:620a:918:: with SMTP id v24mr6140609qkv.22.1578513993700;
        Wed, 08 Jan 2020 12:06:33 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:ac11:: with SMTP id e17ls1651218qkm.7.gmail; Wed, 08 Jan
 2020 12:06:33 -0800 (PST)
X-Received: by 2002:a37:8d3:: with SMTP id 202mr6084518qki.415.1578513993407;
        Wed, 08 Jan 2020 12:06:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578513993; cv=none;
        d=google.com; s=arc-20160816;
        b=n2N0ePPRyiHFjJI7zukHhEgrTeFRnhD40YLxVXB9/MLYdKwRCFBAL3cYfmbbV/usFj
         J5lV1e9/tSqyLZFukZzJLLHMQ1I7+aaC2uL/sF+4ensMkfxvBB87CQpwqPkoIO8Kd22N
         4IBJ255EaTcFXbWsDXyfLZFfWRHdUbfoltYDlR75g/RKP0UkYrumlgZc/ok3jh6Pg/RE
         3+xIxkVzT88l005kDKwzv0DQCXOVM+YHaSiKTgjs4HlcJar7CepbAY3OrLleHZOU++7O
         M3rdacuEsNfcQAiKy7qqc08GZsQHtQ72NnbP1NFzy8TkTBZ2i8mrH9XDWuq8SlqE8OSp
         fe1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=qonaDOyccOY/ZxvhKrJxm0fBJJu1R2dULAcFBC0k1xs=;
        b=snwT+3q0xL99q3VDXzrQiSVg2L25ICs/q1NicABOEQGZA5EhDKbej6ZfStJMN03i7d
         Ala6wwVImqwXoN216sMQlKi+Bx0KuevlaYCX7d2KVA1qP8N38SG+Ezlbbwc/jsFEyApO
         Lfx5r+dXpwCR0UfwZ1GVF9PwEOOtXCwyvqiZJpOqXagN24a3leXbnwT8u4/di+/1wCtF
         /MmTp8BSf16PM680IYvWvdcFM506BNEJ9xMt5W9txdbP9X4VMu6L1U2/DeqdBE3mXtnK
         sf+QmCHzShNubMsWlVrZh6xF/5HRzoIzGXL9owVRgBvOLd8HtzvQvnYrcvWRuWsmzf2F
         IiGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=m+nvoD3l;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i53si199824qte.2.2020.01.08.12.06.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:06:33 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C73972072A;
	Wed,  8 Jan 2020 20:06:23 +0000 (UTC)
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
	Krzysztof Kozlowski <krzk@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v2 5/9] arc: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:24 +0100
Message-Id: <20200108200528.4614-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=m+nvoD3l;       spf=pass
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
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-6-krzk%40kernel.org.

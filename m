Return-Path: <linux-ntb+bncBC6JD5V23ENBB3XM3DYAKGQEFQYXKTA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id CE37F134CBA
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:07:11 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id p8sf2919348ilp.22
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:07:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578514030; cv=pass;
        d=google.com; s=arc-20160816;
        b=JzMcOs3ylgEpZNLhHJGjyzO4uI62Koe5PDxCPNzh6NfMQqT0ATQpBNiL3YfZW2MZWq
         eqkubtYkcza2LZsSCEbQ2cbl7o1ihLDxHhP71OhvITzJ+nkXsenK/WRG4XJs9sVpu96O
         ULn8PuxGZ6ZRH1fl/I3fMQhJH/fmSPXt6vNiwxPwdsAMifmZ2Eq+p3UfG+wN8eRDp2rz
         VpcB91bm3Csa+TPWLE8GMSP8X7IG9w8YEKvbN7E0vsNm0yyp8zAyDfGTXw5EIceIZMn5
         +oSpyW1C++Lh4J5hv3i+59c9wEKmfcnZlpFgKilirvp8N85MgxHpCq29OAgTZDu/EbgF
         xHkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=2U5buAHJS6LYGC+3hx7KZUEiPbaBwvNL9jiLEQqh+7g=;
        b=l4GWJx3JwJ33HNC+6HuvAwBcy+jIBr59KkorY7OH2Jr1X4YjnjXkqYlc4bgrlHAvke
         ef5gC+HnYjCvzMtgsLqpuuo88mm5NRn8ouHHNrgli+0yifavDoadMAZoPCTaf3QNL/0l
         X+BaB/iBRf5P3RriWZ0fnPTyDpnVuObrf6VWFgMoG6NNGtc6lTZ4xoei28gtyTv/mPEl
         IJZByPCY+RnxuHNgTMq5TGwRVkD2t1JjWklVb6ogqaQyC5gQz7pQe9b1LwT+dTv4HbEI
         tJ5j8GsWDmml0NaM9DD254kE+FctTAARTd0tw71oy7hI5j/MQfPk/Sq9H5AMNLbATNkP
         Um+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uacif0ui;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2U5buAHJS6LYGC+3hx7KZUEiPbaBwvNL9jiLEQqh+7g=;
        b=NVrnhfRCaZlFt/h9wtap9DtfOHMzmxx2SzfTsMgksbcx95MUV88+XfKPuICrPafklu
         v3qVOAQpsGJw6VAV22Fq+IVFj0WrO/cQPiKiJ7cLFV4gtqJfThXK8c/G/1afn8B9qOB/
         2FWqphOkVNItFqkcsocPV+KQ/lntl7iXmFAkMYRCQWqaclWQZxRchEKmWUJBAEMdtL5Z
         ClH2BXPkqe82FJH5npV88lhYvjwYG67fVc6YdM4b26kQ6BFeV0zV+NX/tq3tBRz6HvuT
         nL7JGFNZbKrXEb1CFXixNtcwEyRy++xJY4VrljiDw5w1SiW+ScGYUOnuPk7O0MyMSgMH
         eVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2U5buAHJS6LYGC+3hx7KZUEiPbaBwvNL9jiLEQqh+7g=;
        b=dDhZRL9vIi6A8FTkRZOzlHU1D+ZsINivNUCnLBf///QEFgIVb97HAFbjb7Zwt+yOId
         3fY8awUc59u/lorPqtzi2YuDADN899fp3D1ReyfNVQkscnIOP6fmURdYg6Jilv0BX6/L
         Ii35dKWdbeZIz/QO0TKYcTq7TrEIYcJDfel9HdApB0d+Q3IjhXwzxla3V12qu8vXW9NK
         zx9pKaBQXTkf00oRnyQ1RNNuq0jJDv5dFI4/Y7izaIqLZ7pNipIbDUvFGXoKiqVxN+Ip
         WVwMUmTy9N6JN5PhQYssusAWbNcHqVpuVD7YoSWWDV8PoN2I9QGB4niGru3CXV3Zso87
         klhA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWJasvcbifIGzUXPPhq403FrAsa0AH5RdhlouyuatEqO4I2ijzs
	1WMz9H6mik1+VN5Dx22MmOw=
X-Google-Smtp-Source: APXvYqyae1c8BinT739gnS/CyDym1oy6f+Vao3/BM1cvMb0BI/IhXtYJ6IUm8JyMv0PEYbs9l/X/EA==
X-Received: by 2002:a02:8817:: with SMTP id r23mr5755839jai.120.1578514030258;
        Wed, 08 Jan 2020 12:07:10 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:8f2:: with SMTP id n18ls751145ilt.15.gmail; Wed, 08
 Jan 2020 12:07:09 -0800 (PST)
X-Received: by 2002:a92:8d8e:: with SMTP id w14mr5320894ill.187.1578514029899;
        Wed, 08 Jan 2020 12:07:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578514029; cv=none;
        d=google.com; s=arc-20160816;
        b=U1aOtPWmHN2RHjzx7T+E8TiIAWx9tZsYW4P0hjKXtePrGbk1j11dhbULTuksqKTumm
         qLQVfS3GC1ViMQS7qFs0ks5NqKQp+irOdQcZolYuj3+0mQe1hRokn0+Jj4nnvaTobmIT
         s7/DCvUV4VcTb+xI0NKAS+2Th6UmUMIIxVhQS1IiBxWZoV43I4VLlUsOnlVUc/FGubdp
         ksv6tvNw5BBiGlbcwb6tGuRbc5kUBBOvpWTiKcV9X3WyZOuVVl+J82ZozV72P/J2zZvR
         2uS01EeXcpfFsQ6OKKI/3w4yjwOhnBQ0cxK5GoztFvexHJPg3yKgz4EYBDDSRjEyW9Kv
         VtTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=D+NAGQKznp2GlxN4TzVVZ4D9JNa6BLam7GQC/27Wsv4=;
        b=H0ZlSIU0OIXOu9gGTPuPl0z/bbfRUGt1Km8986XKXaX2ihg0Qo3OC4KkKkggwRelrF
         Kynn7YghajPbXOJt19HVfHbdB6I5OGMjHNqR/NhqM+NlTJI7XsojxwIJZwSQuB7sEbBT
         jN0vYBeo1aMOktUCejaQNLs+1RIBdHh/W9jyks7X0gFOGQGqD3zFfTXGPsLnZSAFoSCH
         Eyrzlfw6a7nN8fU0EZqS5ph/XnPV9e3dsQ8Rtfq0R2Z/eNY41qcEy3ISJmaqjslacFoi
         F0105lF8G87sVynj2yGZG1marVVwXPClGACqljbz6zVleTKmpi6R3pAS206K1z3C0XpH
         ndzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uacif0ui;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si253987iod.3.2020.01.08.12.07.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:07:09 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 45F7F2070E;
	Wed,  8 Jan 2020 20:07:00 +0000 (UTC)
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
Subject: [PATCH v2 9/9] net: wireless: ath5k: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:28 +0100
Message-Id: <20200108200528.4614-10-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uacif0ui;       spf=pass
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
 drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wireless/ath/ath5k/ahb.c
index 2c9cec8b53d9..8bd01df369fb 100644
--- a/drivers/net/wireless/ath/ath5k/ahb.c
+++ b/drivers/net/wireless/ath/ath5k/ahb.c
@@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_device *pdev)
 
 	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
 		/* Enable WMAC AHB arbitration */
-		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 		reg |= AR5K_AR2315_AHB_ARB_CTL_WLAN;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 
 		/* Enable global WMAC swapping */
-		reg = ioread32((void __iomem *) AR5K_AR2315_BYTESWAP);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_BYTESWAP);
 		reg |= AR5K_AR2315_BYTESWAP_WMAC;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_BYTESWAP);
 	} else {
 		/* Enable WMAC DMA access (assuming 5312 or 231x*/
 		/* TODO: check other platforms */
-		reg = ioread32((void __iomem *) AR5K_AR5312_ENABLE);
+		reg = ioread32((const void __iomem *) AR5K_AR5312_ENABLE);
 		if (to_platform_device(ah->dev)->id == 0)
 			reg |= AR5K_AR5312_ENABLE_WLAN0;
 		else
@@ -202,12 +202,12 @@ static int ath_ahb_remove(struct platform_device *pdev)
 
 	if (bcfg->devid >= AR5K_SREV_AR2315_R6) {
 		/* Disable WMAC AHB arbitration */
-		reg = ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
+		reg = ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 		reg &= ~AR5K_AR2315_AHB_ARB_CTL_WLAN;
 		iowrite32(reg, (void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
 	} else {
 		/*Stop DMA access */
-		reg = ioread32((void __iomem *) AR5K_AR5312_ENABLE);
+		reg = ioread32((const void __iomem *) AR5K_AR5312_ENABLE);
 		if (to_platform_device(ah->dev)->id == 0)
 			reg &= ~AR5K_AR5312_ENABLE_WLAN0;
 		else
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-10-krzk%40kernel.org.

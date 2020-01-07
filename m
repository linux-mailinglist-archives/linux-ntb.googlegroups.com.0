Return-Path: <linux-ntb+bncBC6JD5V23ENBB5XP2LYAKGQEZMSQLUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B34132BF1
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:55:19 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id b5sf128623pls.9
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:55:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416118; cv=pass;
        d=google.com; s=arc-20160816;
        b=LBTZ410KQaVtRyAz8HDTHR/kXRjFaweombHpmEHuFrFIozG8bXkuuBnLLqADCuFore
         7Uy8x+lC/jayfIXfYWxIR1UFhDG9rvU+E9vqu1t6tj6TxBhoxEvd2qLI4+u5GMAEoDni
         scb+nQl63T3FWIZ8Y+gKIUG7rUuU6odiOkjBP4CtDbLPOkF72Epm4z5XJ6Faj/NxbAj4
         PCSuAxqZI06U7UQk0Bsq3Ww/lIpsGN2MDTw1jmUcf42/YGhkoyzDisUVX0pSt+AgaW5a
         3o6pZ8jLZDw68jQp4pvTr2L53sSm+K5U6jTqkcHQcg4z72wOiRt+VK1FXo6HeBSClQ3a
         NbCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Rk5lNxYUSOK1qXee3hG80+T/tfr/L+7Ka2fWMwbsEgI=;
        b=BDxstkvlLl3a7aHyEb3nlKoCMtDMEHFlngCiMknlJrtaN/L8lKVcGTFTpBFPlVHIAp
         7xqZ/64wY7MhyImluDEr9g0/xDAPI0VInR4vV1yBnBFUOiJDxPwScoIdB7vwDauEN01D
         eBnzGv1p8/tu9FiZup/QMJ7fP+FLAr1ee5yWJDj6ZN0hacDUwg7Ctfvw8JrqB7oqopZh
         hZEVqI3Khw8+LuGlLgctJRlAwMrh2pmtaS56LtkMWYlg6ro2KbrzpY/O3/7Xa5pMIfmj
         fXdJCOVfLitZzM2PYeNue5DIyC5UHF/40h5Egs7r5BlOCozFPRGaNHF83XAGYMys/9HA
         OYug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qNYZQFlB;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rk5lNxYUSOK1qXee3hG80+T/tfr/L+7Ka2fWMwbsEgI=;
        b=ggD5J9Lhz9hMvWbdXgFHQ6Ya64EeQZAKRuAwGSBrG3h2hTsnOkLztejnqvhz2K/Oup
         IhJsOg/ACPo3qGy7dg3p1N+gP1bdtN+jUyPfqqvaam1mc3s+4GikgEpvvgObjUMmTXwF
         +c8/oLv8Cc7/5sIm4icZ8aahMF97HIObWn8uYkMUjW9i64eKk4oCwpP23YRNs7/V6n9/
         QKWj/xwtW6sQ213gwguD7sZlxrk+5hdMMXnf6rHbgKcgJQBjCjEd0KqjU2ZLzP9uoNk2
         YPhMPH8N5PWdKc3f4TBtflcr1eAb4HPwuxyypb+WlYn0CfdTDzsGBDm+S4KCuToiSZ14
         w91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rk5lNxYUSOK1qXee3hG80+T/tfr/L+7Ka2fWMwbsEgI=;
        b=kEg503fplWe8REL3SHgCFrmNCnUw+WRPnWDbmsm7XYUVs2UuXs+k+BtCYFlXEnOgA5
         v+tVV/m4QFcKxvekHNEc+AhSHOz0wHidgou63+bKpQt7NG+evtk8Ppgx8OIQpZ5CnyY/
         Pa0fAccFNPiX7C8KzGYq1JP44cMj9dWUjJYQXD8P/15UrpQXFtVLNhTZLm/Gmffu50Gw
         KlvYvvP/nDkE93vTYzTiG08aHeyTRA0U68MmYh/zTWPpg39OTBoySyf2K0CuoeHPDn29
         MbjllRQu7wCSXxuh0ys2JXvJif45CLOpQo3bf2otoZ7nxFHQoMbIoH6wmkYjryHXMEys
         s6cg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUmi+ZmJ4pvXLcBQdJNYeXGMwgcO4+ZxTSXB+KavElNMysBDJXk
	iJK0VAZgC4NgWL2q7v3/KBA=
X-Google-Smtp-Source: APXvYqxdIo6NKtSpvmNmh4Wp0YLGmGsqNY/m3GN/Mm12Fdb6IX11VX56fkRS5iyzHDCNZFi1RUnygw==
X-Received: by 2002:a17:90a:3747:: with SMTP id u65mr670638pjb.25.1578416118065;
        Tue, 07 Jan 2020 08:55:18 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:28f:: with SMTP id az15ls35411pjb.3.gmail; Tue, 07
 Jan 2020 08:55:17 -0800 (PST)
X-Received: by 2002:a17:902:9a42:: with SMTP id x2mr656344plv.194.1578416117634;
        Tue, 07 Jan 2020 08:55:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416117; cv=none;
        d=google.com; s=arc-20160816;
        b=ICzyNiJAUp5qY/FS8EKEyLsA/c9wkwcIPOIQmv7BKdrtP5FkTsv79OXP+Gjyk+4I5E
         32GNRhT+vQvd1mK0dOXWG2YfNOF4zlabpDqHuh1h8teJjflZ8n5xM21+UN+1TlDGtuMG
         mKF9f9Soeuvsg9mJPF0vcxh8iKYxdl0PdhmSN3GdNZCF3DNTITjRtbP2Friv6XlTfrZ9
         Y4WFYJtOu/iEjhRCvGvOYl14S/KZ0gXx6gSYI94amNH4nU4PYb89rmnedrhvT2BaOI64
         bxMprvsJtIOuHnXeJJdl3qjMIY2RkOAM6iJQOvpqOu7keKXyr29lpWtQxEr0D8BfHOlF
         l+Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7WQyDs4lHTN3JTDpGvu7Sh/a9QffZamocy1jNIYJLlk=;
        b=vJOG4gIDAvdBm5cMOH9I6yJRUm7vBRBast6V67JUbpRqhIVBIfuQo3arptC63yoZel
         Wb0/fLtx6yH0mrhTj8S0GPBnqo5bueixBKdsEjiRL11huAkMSQ8tWpQrFUxSKn+ZkJfx
         T/57L/70kfgBJSgpAM4b5Y4myHNGT9iVmR06S1OdY/EU+JZYzoR2PH3sj1Bgijal/C8T
         i2DmgXH4XnkCxFf4TjrAhEkrZKDuSPDlbIcE+y75HFjrH/ABXzxnR4thdxqEg5k/yEdd
         kMb5xjShZKmydWWecdbckIYscbtX5Hvx2GbagT1Uw0enLHUqOd7KaJKtLac52U6DhUTm
         bXiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qNYZQFlB;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si10220pgj.0.2020.01.07.08.55.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:55:17 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2D18324672;
	Tue,  7 Jan 2020 16:55:09 +0000 (UTC)
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
Subject: [RFT 10/13] net: wireless: ath5k: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:09 +0100
Message-Id: <1578415992-24054-13-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qNYZQFlB;       spf=pass
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
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-13-git-send-email-krzk%40kernel.org.

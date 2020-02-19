Return-Path: <linux-ntb+bncBC6JD5V23ENBBHXLWXZAKGQEGWL5NMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 40048164C9E
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:51:28 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id w62sf802526ila.22
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:51:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134687; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHdi00ZQqnaw9YE6Tu2tuSFvDxcQEaoKwFPnNGTsrSkyNCvAUa/SrJ296UoMORtW/A
         LS+MVrPU6Fj7Iq+6IbeoEOHPRqP8dve2xqsxQI0bEziD1ahQwmDIIga6X5k5J5aELfhU
         vPrAHTXGMcUpWv+IAISDLSTaoYL53npjGsLCkkmNA6k+Vrvmm5A6UJ/uFpcwcoRT5ob5
         2Nq9oCFHixftMv8dlfLgMjYZCYNAXy+mTnUb4jkldguYbznCNEr6koeCTVKMzm9nyDfy
         VMvy66ocR8TWJweBoEeCAhZ4uop+anwrH24wzNFfW9W/Fl26sxvW6aTFQzZVB3+2GAvk
         xbeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=ghn+xA3c4eCoipghtpYpMjE6yjD4q97WmBr0IrgTb2U=;
        b=YSroPoaqFuewcBs6cpUS+i/qBkWOxIj0GI+ZPwXg/jxSXpVDkVuMugVYqGy8H9DM4e
         ieTCpZuJu5aJZ35yiiyhnWCNgu2E6EFEwoilR+Kkfw0XWGg29J1YvKHSbNObLqBCdMgd
         rc1eadtFMZEEDEI2CB5UK+ZoQ2SK31ZCdN4XQ1MY4zXMfgR0npPAK6UdOE4xhqt5x15J
         3Z41Oi5HodHpdIMFN1IKlx5Q4rMGSXRpMw6jJlgpRYr0Oi7FR2kN37a03GZv8ol+QAbX
         DmM2q7n0OaPz+waGS83oCXdaSnTbMzs0o8dQMD4srUgjnLPpA9eSh1EUl9F7BN7gh6Sm
         uncw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vI/dKxPu";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ghn+xA3c4eCoipghtpYpMjE6yjD4q97WmBr0IrgTb2U=;
        b=X2zJ4wBZEHh55FqZTrNljCYXDkEVzBDqVBy34sAqd/K5wfwAHIdPPELnefwWzgS6qy
         1ONiZufLrjOnYeKfJeP7ZtoIzvw7lBh35klYQ+NpcmumR8ylbC9cC83o6P+ukLiFSUaN
         QtxWkA8FAWn2i5nuA679DS2k3+VSYxuSVgEgcTKksZNXv1OHrVZvYDJkYofk7d8o6vvE
         Q4S2eqEy1spJ/BhWImPzDiSYNQKWC/UVQG3nJHdG/d1SaRSbX96ixOI31oiP3IIWdEs/
         lAsNTUpvQQ4garjnTTBqbMWq9VC8yjUvtTBllzUvl40CsKYa/hFnWiWbLURG5kjzSnKC
         bLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ghn+xA3c4eCoipghtpYpMjE6yjD4q97WmBr0IrgTb2U=;
        b=IbteJlRaEPQmKE/3s2OjFJTOdY8M6E4EqzhZfVILH0nZJukht1h1Xcfm2bnv5Vaq2m
         RYceMnvfOBHsmSjaW7wq0jhOu3o3dCo4/48357Yv6biWfBQYyMaUnY+6yEutQRY2rn1J
         +V6YzqKOS/dxiKYjOX+5UYjBqzdPhEvPKarekhtXrx+npqQLUxgQ2tla7Yk8teB5oc+D
         rtiJH9WaD4jaZEreVfoR1zQFYvejeNfa7MtHOgqqnl6ko2U86a7Tufe1lqTztrewH16Z
         WMwarGdZClBkbBUNueDFIxPmCrgYajXm4RF+zdkHQoSq8zispjuUEqVXpMJF43Uf5fuj
         g4OQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUuOjq35Gi9WD5pupyqj2NJMpWvpyN1k2eoClI/OrftLqmjVnWI
	rvZjsg8kKykBQG9cSJumgCA=
X-Google-Smtp-Source: APXvYqzc99Z/hC1I4jjSdtOC/Iyo8G23UI76BDP30SDaWywv5NTnnaVmCXfBIk2ep4ONfBFJ97g0Zw==
X-Received: by 2002:a5e:850e:: with SMTP id i14mr21800312ioj.226.1582134687043;
        Wed, 19 Feb 2020 09:51:27 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:5d90:: with SMTP id e16ls65700ilg.4.gmail; Wed, 19 Feb
 2020 09:51:26 -0800 (PST)
X-Received: by 2002:a92:5d16:: with SMTP id r22mr25755750ilb.230.1582134686755;
        Wed, 19 Feb 2020 09:51:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134686; cv=none;
        d=google.com; s=arc-20160816;
        b=osbDwbEtk0BJOmHLgUIgcdWG+hp1ze4amIpn3CTtyyo2+t8FLPXD9Nm/TKCShB0+bx
         8vJ6sUBDSeZ18PGeeafpZGDinjSxbqfqcZYbDoivh2NMze0cluC75nvDDeUPGJPnt61F
         dOYHDcmRGOxzvMhJUfimfVeOrL8ZEzDckAN9+J7CdSV89auqXSyUKn/HozyZqImPf+vt
         KvyNvwm5tGLiSKZDuBauGglniBhL2qPZ0BzOZ7HzV2bXASrO1yHesVee6ktgvHRY6MWh
         lzLxmEZkvEEZVQgDPWVQOWKdDYGb4+WjvAb6DetIh9+wH6R6M9S6bYUkVBj10CmBZrcG
         4WBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=aMpuwLS5+ED0JDvM1wNEebIBOf2WuCBOUBWJUaOKJDM=;
        b=xGbKCE5/uPI5hi2a5HLUKblk9fsb63AHfLcPVGoxRB34dwb5z2GDJKrpakpTgH77fK
         /8ZwoYCHQCqL04aYjmg4pV4X4JH+5k+HgKvyIUvLO1fVN/eSTvIs575W0ezaQTCnvqx+
         EIGiyXwxbTwRDaL8uSWrH8JqijlLjxyo9WFo5wQxMcnPTIc9pwtvQaDCrUXwlXkWNxXH
         JtmP98GAhrftShB4GAyAZJOPkv/wJXGrzx6SEncZP2zGYWqU7Ri43imINSV+5cIO5auq
         mdwh0NqKHVFdUKj5+m5aifxLfG3NF2SC/USH23pWLxRtcHbXMGDvMqt8/ikUB9FHf1yR
         tOYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vI/dKxPu";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p9si40148iog.5.2020.02.19.09.51.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:51:26 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7FC1924676;
	Wed, 19 Feb 2020 17:51:15 +0000 (UTC)
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
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND PATCH v2 2/9] rtl818x: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:00 +0100
Message-Id: <20200219175007.13627-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="vI/dKxPu";       spf=pass
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
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Kalle Valo <kvalo@codeaurora.org>

---

Changes since v1:
1. Add Geert's review.
2. Add Kalle's ack. Fix subject prefix.
---
 drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h b/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h
index 7948a2da195a..2ff00800d45b 100644
--- a/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h
+++ b/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h
@@ -150,17 +150,17 @@ void rtl8180_write_phy(struct ieee80211_hw *dev, u8 addr, u32 data);
 void rtl8180_set_anaparam(struct rtl8180_priv *priv, u32 anaparam);
 void rtl8180_set_anaparam2(struct rtl8180_priv *priv, u32 anaparam2);
 
-static inline u8 rtl818x_ioread8(struct rtl8180_priv *priv, u8 __iomem *addr)
+static inline u8 rtl818x_ioread8(struct rtl8180_priv *priv, const u8 __iomem *addr)
 {
 	return ioread8(addr);
 }
 
-static inline u16 rtl818x_ioread16(struct rtl8180_priv *priv, __le16 __iomem *addr)
+static inline u16 rtl818x_ioread16(struct rtl8180_priv *priv, const __le16 __iomem *addr)
 {
 	return ioread16(addr);
 }
 
-static inline u32 rtl818x_ioread32(struct rtl8180_priv *priv, __le32 __iomem *addr)
+static inline u32 rtl818x_ioread32(struct rtl8180_priv *priv, const __le32 __iomem *addr)
 {
 	return ioread32(addr);
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-3-krzk%40kernel.org.

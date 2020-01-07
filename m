Return-Path: <linux-ntb+bncBC6JD5V23ENBB7XP2LYAKGQEQ2JUYDY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3845B132BF5
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:55:27 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id t70sf253766iof.4
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:55:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416126; cv=pass;
        d=google.com; s=arc-20160816;
        b=F9yN53c6zMztXTr9zhz+MCFcgyVf/1oSBuu5XKe2Brzas9NOGl/klcZE4YCT8xFnnJ
         jnlcCD42I/9b2+LV1SgxGZMGc91ZMuEkmQXOT2tJDGys7oAyKJ6cEloqV27MmFQURKT8
         LGUkYIpU97DPC0Vgzo6t7j88E2kWliPanYei6H9kwO/g+aPzwaeRRjjSDfd0wQHEOlSb
         +uqmwUsvY7hAW3GV4gPtfsl2i876YLaKcqVC0fIoessfbf27SDb30mRGyfKXFCxM7+7J
         obONIZZ2t2XebA3tW9eAxRFHQ0fvd+iw6RMtesp4GuZcRbaSOtM9Kzb/RGS2h2rHoXEF
         OvuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=fqRShU4CW1YDUPShAvG8Si43GqFwltt7hK1OTWp/Ung=;
        b=GJSW1OWZBUIX+rM67kymBavP2vqWLAI0KIFXxtK8av9ty2w+hUVkqFKHh8c8C31XXG
         AujDuhjMvt2OFw9t/82+eulwug04fkTuKmB6WWGL6kwFFSeAVxYtSwuz/SeOKV7P6DbZ
         lEWDINtMsz48fMiR83pOQ9nvHkgTIcz7KtT506mrpCDuKeP+z3wSyk0fcD49rJNvkZD1
         Gn/1lJJZKS2vlV19r9HSKJCh0x1SfhBhBL35GbrbBOLzy04C3HJXrGE5jlWn6xxVuTxe
         b4AlTAoVCD7wEVMglaTM/uxDyh2tXNGZH7aYaZ1U4Mhnj0BVfdNlQIxQEjR4rWFdnz5Q
         MsVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FdNtYmqf;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fqRShU4CW1YDUPShAvG8Si43GqFwltt7hK1OTWp/Ung=;
        b=ohUc9vuhcLrAApWB3zxqmBP1WuDuB82L9+hDSa1rUEP89IrC+TUKMcrJ9MIRMg3Pdy
         GCOL0azc5VrZOzlLDMVBR0UgqXLTyEIbdGZhRijPaus9D6M3QJ89lMgH/Dw81pGTbAS4
         /D7l/U72C1R+/a3Zi8/6+b+fM+lu4Y5jCzcVi2fGTYv706kFwa2FT0zc5D519LG1uy8Y
         Uh0eB1lZzAFFCDH1VfQ+uEm8SK8r7B72XMXZGJrF39upCoTUdySYFQ7wgUap3jGCWsl5
         eRimUuzuEYCNErTF82M1GxyMzhyYOppixADPj7QL84MlKkFEZckEenYHMII4b6yflhjb
         Yhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fqRShU4CW1YDUPShAvG8Si43GqFwltt7hK1OTWp/Ung=;
        b=cw87K82hv7hbTolVU9IlqTVkU9VeAxGaayVqXe6povHpESiefZr9Q4sVrDmTMJ0/MB
         w/nyLk8p1ZGVF40T81id+Sjkltnv+EPs4ywm3xIoC464pmfp+yvGSMyiVg5D4nP9MdmA
         vfJu91pTQ3nXY/sPYv71Q5mSvRnLgeDsb5pDKANTQ1hcAAbEda4TP/Q8hbrKGV6slkAg
         RNNJNAxLvaw+NaY5NOOM3bR6MQi07o4sYqBggxeTMhICC/fEpocor9XK5+VU4Ay6Y9UQ
         +inhprxnVzuE2xQgy6QLrJb9vxsPt5LpU4ff84ltipsd1afFlohRoYRZE3PxqREprMBa
         PjHg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWajc7liOz5TVz1FtyliKjBydwwd401SXKTT2qXX2KMPCBSBfQB
	5hFl/dj9FJFxS0Yi9xN4Hlo=
X-Google-Smtp-Source: APXvYqzJIsevVwKnle94fbMqSUk7Qru6kzqhfEOdKtcTgmIXJKXdmdhBLWTBCWkem3DUHCnl1SQjog==
X-Received: by 2002:a5d:9d10:: with SMTP id j16mr76831137ioj.0.1578416126096;
        Tue, 07 Jan 2020 08:55:26 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5e:9807:: with SMTP id s7ls2940ioj.13.gmail; Tue, 07 Jan
 2020 08:55:25 -0800 (PST)
X-Received: by 2002:a6b:7316:: with SMTP id e22mr75620260ioh.205.1578416125784;
        Tue, 07 Jan 2020 08:55:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416125; cv=none;
        d=google.com; s=arc-20160816;
        b=Fhr+TsYFvmVJ+JkKtjHSWkK4ZnagNFiWgJbXug3NT0u4fpXD1HRhxa9mrL1zcmsPG3
         ldNEgbjnZfq4DeAdT47p22bxpy76mjsoJjLw/19S0R3jQPIQDcy1vQK4loFtm/0Gcqkv
         kQAUuvn7mQQPytWXPZ8RwDY82H6qUNDNBXmIdqYEbll2SCbqTSluJWABfP1XVe2DvjyJ
         Tu+fVKdnTxGv1KxMrCrTRtE9TptIejyCLJ2dJrWz89RxrnWdg/IXczYSd0mvOuGsvREw
         opPG5i/LXLK5LQB3YixWKvODj88RZnglU7pqPmN0h1bL70C0+uNbsz6mGEf1H4S2qw84
         JruA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Mm8adAqCVRndvqeYjnKj0/OnsVgViIHpA2BJ8XgnM3Y=;
        b=Dqgb86r/tW7ScH1x1b8UIjkSogcPKhfsl2gPj4TO0ChCkVzQIOKGKm9Ylmtw30WmnY
         CZbR6URWYPeZU44il0CbXQ6RBQOOLUkvlJipD03+3r/kkXb2JSwFyltuLO7gmMpxkRhl
         tiBaCXMoe2DsyQpQF+p+61wxWxulkPrvJ0Z9fo+07fWoyzCdiMN/ZTfny2jqvhTgn9cl
         Hgw5sEF9+CTxA31j977ZYWjtrRTNgjUYrAzmV4q2vzj2//PDBjOZGZRneAIO2DHziAXK
         e1k3W7myjehzXz1Hso7OBwIhq9EFBRKfsa4SgfeNKlp8fMaHvU95xh/3uAItyTia2fhI
         g4rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FdNtYmqf;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v82si20764ili.0.2020.01.07.08.55.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:55:25 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C24FD2467C;
	Tue,  7 Jan 2020 16:55:17 +0000 (UTC)
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
Subject: [RFT 11/13] net: wireless: rtl818x: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:10 +0100
Message-Id: <1578415992-24054-14-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FdNtYmqf;       spf=pass
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
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-14-git-send-email-krzk%40kernel.org.

Return-Path: <linux-ntb+bncBC6JD5V23ENBBLXM3DYAKGQEZ5DG3ZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 795E7134C63
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:06:07 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id r75sf3069376ywg.19
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:06:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578513966; cv=pass;
        d=google.com; s=arc-20160816;
        b=XFetV/OHb8NjcAAEYgI6xbJRBs3PjJd4BVOMO8hankW6gxe3VMCx3rItVPbCejv3/L
         DAsxeGX5z3dORmo/ZTSEg68ewhyanmGN4bfwE8aipX1H54S3LK4p7fIoeTpxAFQ8Rm/g
         sX4807TSQB50UflboilWDd1LDpHbiXZwqFL38cjpP9v6UbsF6CwR5DsniYSQybXwCGKL
         jih1UgPvjC7zjFE5mXvChpeUloPxY1vNuY1WkrvK2fh9n4qj8qkzEmlGnU6Cop10oMHZ
         jt7m05TqNfK4eSqOkYYHEQygy+uCEDWtDjOr4dmTr8eytrI5/kDtHzSSJir2Or+DndeP
         iBww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=qhVbeQ2oQjvWqOq+QLNh+R8EcZESKPqe/TaPTsjO2Qk=;
        b=eNgz8frx3F+jDzo6XjWAOOiHd4VMJxtJP5AwUKE36iGrKmky/G0wEia8WsGT4L6+EK
         U83pWdKCXDunl2XCUf9dFtCPlEwDKHayHBtd7B5k0chsdMosTIKSyftGS+O0lfUGLqUS
         Ob1k2BhV5o4+LSrvrvcl6P3PkPKaWLZtwH3A1b4L0hUVBnAy8WGFn2V+0w7thKWS1cwm
         3vV915N8nTvzf2RFkYf0dS5/oCNoWfJsdNlDCa6ojII+Dgu/K7uvWjFnYPVzZHKMSSQ2
         pnL6r0wFVnMdNnDSrYlw0gezYx2Rr4Ixy1OqgZ4ZR+UECoxpF5cdt5HvP9K3aKkTOaPG
         OmTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H5CQ+BGA;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhVbeQ2oQjvWqOq+QLNh+R8EcZESKPqe/TaPTsjO2Qk=;
        b=ShIr4OYNl2qjxh5XUrBbPbbxcyrOv2gGZb/f4D24Ol0tfcwFZUbkGTc3NqpYUV7g02
         VdGn2fFhgVJgKtvJeqJA9UBYflsrCeKIotHRnwbOO3ml1VWqX9axEuIzvGQ6XkF0pcRj
         0D3HsStsYV4HBYyCgMXtH5FIPn//8+bb5h/zgSZ+6p2KOFvwiKylz6KtCtnbSGwuQFrJ
         vUjs4Rc+dHXKEsTE8GqW+zEQpBzpK/E0sief3yMzNT6QdGiDcx595tW8uzCIjZmicKjT
         g+roYfssdKAOr8anMPt6ymGPjPgIFSeZVH1MSyZHv3S4PQNG2s6Uv7yUj1GodJ0OJnrj
         V7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qhVbeQ2oQjvWqOq+QLNh+R8EcZESKPqe/TaPTsjO2Qk=;
        b=fRbmkVVzhBNqEtlNsQUN7BK41EtEieOU1FCqvSOrmhleednlCbn25rp07yRjQRwJKL
         MlsulA6iF1zbXE7uQsP/ja/PBH2Snq4hr6K+sQwASOnma2lmPCi4keTbUQ+LYv2VdYAj
         DfBALWDwWHVhtlpKftFPc1cVTt8osy4ThhIo9F/9MXyVtM/tSHhy3JBBXiSCiPGgnvDa
         3W9+gh/nlY4ZH/M1xA9+hj9WmFKihAyuU618vS87Q51rDhYBQ0G0vg+R/uaiTXtm4N8J
         trdp9f9+QUiamflkj5VN7bfmwUiCbtq7k3TOh32qE4vWKqpuaCP79nWJfGH/S/oWRLTi
         9xcw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVDY6mZ/4EFYR6gfKe98e6U7t1LS2VYcNkIFtLWjHY5vhDHXyQv
	d92M7hEOJwXOT/J92UWKzTY=
X-Google-Smtp-Source: APXvYqwHGQPMDnXJab3a6nij+vE1CdKP0Q9e7JaG/zIEGTHNud1mtfH3CcMCxVPd1PdoU7lEL8CnLg==
X-Received: by 2002:a25:7743:: with SMTP id s64mr3343804ybc.90.1578513966474;
        Wed, 08 Jan 2020 12:06:06 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5b:b92:: with SMTP id l18ls683090ybq.8.gmail; Wed, 08 Jan
 2020 12:06:06 -0800 (PST)
X-Received: by 2002:a5b:c0f:: with SMTP id f15mr5118455ybq.129.1578513966049;
        Wed, 08 Jan 2020 12:06:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578513966; cv=none;
        d=google.com; s=arc-20160816;
        b=pGx64w+IRzGvhxQimJPnAMa7jqDnLdIK2DJjwlWBst8KL+7io6k8mXR1XOM/OZL/gD
         3qR73lKjWWiaNN7kcY3lWntCiVbvv6hiWy9Njry74y1LemDCKdv59HRWEuqf0c4M0Z+k
         GMdv3lFQ1rxld4qusnIC7u1EcwF4Q7LSlIH24i08CSBsf43xj+TvUuVz1gsuEwmaXiSm
         sYu+0Z57uRRWZ0C1JLogc0O4kvnwc2Zm7BGv1lrW9q+c6ntTTwmBUo/6uubM3t1FuKm7
         IZrvMMHYh7QS/V31OCrn1a+SLaTo007RsI1rimRd4DT+GWnYdXN5zk0mFhj7w1g0dcu6
         q2fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=HPAQ36b78qzDQUNdDpKBQGkP8n8IlUvcN8Xs+fnQBrU=;
        b=QJpgPryPrdlAuDW5Ya2iQBPH6sHBESE2cHIpRhpDblx1R38idjI57OyOoR68oG7j9q
         tLfdmZTtgd4huWVJqDCAfIjD3HfXXokSYRq5BQvgKTNbMlXCSjqDTwQsrGAPNDg2hQJf
         /ZVDrcIbWMEEvwz2MnG8733AR9cwjmZYUdeq8e8pG4fQCewV90wIYCsIVJsKU5L6lg9X
         0UMUVoOfNpZJ/yp8oF5HfdJUt/1HmuhQtcaCvFlS193wLTCX2RQ4VscOWyIVxhA2dNde
         nPQ6ItxR7lYsSnxE4VIexU39QjXsQzQoiwQVAhZb6xWriC2SD79p1JhbLVfpICmHBsru
         MtUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H5CQ+BGA;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z5si245576ywg.5.2020.01.08.12.06.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:06:06 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3E2BE2073A;
	Wed,  8 Jan 2020 20:05:56 +0000 (UTC)
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
Subject: [PATCH v2 2/9] net: wireless: rtl818x: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:21 +0100
Message-Id: <20200108200528.4614-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=H5CQ+BGA;       spf=pass
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

---

Changes since v1:
1. Add Geert's review.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-3-krzk%40kernel.org.

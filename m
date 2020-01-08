Return-Path: <linux-ntb+bncBC6JD5V23ENBBQHM3DYAKGQEELU7CIY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A76A0134C79
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:06:25 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id a73sf2682198qkg.5
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:06:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578513984; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYHRfbOJjPkr7q2kDyycFVgTpLFhzU2hpLDONz1GWkIhSyQq2M6/nXqFbXZ5EGg3IU
         tc4yx5iKIjsdRjtQZ2FffI+5cVNrMhApdlQfU0l3XhDVtJjFxp6bMXJ7dTKWGx2X+ce0
         KM3vzCKAqWvKQyz7otW8Bu+uS3Yv9xHm3U4PcBKHnqyVcnYJ9ffh1YsRT9P9c3OhWLJ2
         yGmU7XzFOgFmz+xLDk7i3VxXXjqnWpFDplcIg+faQSJxUUjh0HId7pHo9pxrJxNsMFVD
         FWrWqauLewLXXSmcy2blgWBAcRmzUb4hbYF0XpPbhNa2Y+rYJlAs4Awh+5y09yJzQiEj
         cwhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=kLfwUh2EAAqRTjxT+9DaDKhOBmN/a/D2LuXd/e8mmUU=;
        b=BRC0tCQpJTWHwE8Xvr7OHYkymFosOpN0mjIbllqrHyiC+32d4XEV79Mlc3xKSKt3SK
         lXv0chsgwbZFZ2T8GWbmZwkOP6d4kclc8T5nfWkVyWqb54PKBgdzIArpjicYudbPhIo1
         7ahW2vwzgF4YDwaSxxHUko7il8nMJvJnEN7InzU4XerGY+k8uNZ0YSXgUE4+jSdeInav
         FYqJNR91C4+0bWkMklpEj01b7rjcgMV9cPiYeRBqOMhw6asfKsCwNrcXZSIYXFDRs3eI
         YrNZKCSDB1H7m88C25H92XWjvAsM2Oii8IYT6Y8Mw8ZDXB/Vu5PqU2T8+SPrngbL9aEs
         vOsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kZmAdTXA;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLfwUh2EAAqRTjxT+9DaDKhOBmN/a/D2LuXd/e8mmUU=;
        b=f5LnRdB9v6ks13mVSHGQYE8GT0AkpdGjUmY7rzGSoH/sZ9UlBZnvAWAtos3z3DXyBD
         gWBj2Odvmlawb+FXUZh4FeyRum2CSaGJKolJFvJpovNDIWjOZd+t3XGgmCSLbsQu+547
         Cz3iR4Kd647M2o5r1Q/TzkUgGKR3cKxZ4B3X3jd5KhOEx4Gn6Q3NhuKdAwaZZwHFj1kD
         QfENzm9cYI7vHZpao/bU4k7+9C2b2/08GuspH7mIRnyRrViAOxEeGaA/Ns9OBn2W9+sw
         wgXf9Vqk3JGiBDanBPnPyAsV0OILE4sB64fqH7Pq9iRNxWlE5nZksyrUDHnhmUVUt8iw
         SFfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLfwUh2EAAqRTjxT+9DaDKhOBmN/a/D2LuXd/e8mmUU=;
        b=giheDKTkDjU//zw2bX863f6+WppLr1YfEAQWMJq36fhNXaj3rXxawwZw5N3PwXbo1/
         AkwYTZCwRd42WRTZG+MNZOqAYxyRhlgaECFgsFXMKbHHLpPnh/SX7p0/hoPFT3ib3s95
         FhgiTMmAnQS2XX+hN7+XQ2XqR0tmJVcIoiz+wEryqFOj+SvcjSkL3H4KUAmUx+Qlh4Ay
         LiYNARnwNjrF1hjA3ApMn5ajl2TF7ucspfAvhH+RXz/GTkIQFxEMQ+6JaGg/zf8Drvma
         Dgo/pTLr2a2VKFXEjF2Ku5BzsmEU4RXTZB05XQRKY7KKIrJGTa1TplT1IlgW4IQpxGxf
         hZQA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVVGbGzVV2rQubpcvmMHjVesGJ9hz9Is/B03FHEyVFIYreY41Lk
	Mw22D526/Y7UCzsfK39cB6A=
X-Google-Smtp-Source: APXvYqwMdTjqsfjuaTxUP1Z2M5u8MS7MehkkJ+c+bxPTE4E8dkg/KD76aQmznA9YuxqfIxrEt38LWQ==
X-Received: by 2002:ac8:1769:: with SMTP id u38mr5010954qtk.160.1578513984611;
        Wed, 08 Jan 2020 12:06:24 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:9f92:: with SMTP id i140ls1652362qke.11.gmail; Wed, 08
 Jan 2020 12:06:24 -0800 (PST)
X-Received: by 2002:a37:6fc4:: with SMTP id k187mr5871131qkc.21.1578513984293;
        Wed, 08 Jan 2020 12:06:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578513984; cv=none;
        d=google.com; s=arc-20160816;
        b=WIS1l91R3w0n5nZmtI32H76FaXgF0W3IS5/G1aI4/8Sc4nZsF4thWMVSta8cCBjsLj
         OQZuCPwEXtRC7GC9iq8C60zEkAKx+qns+zewiXsbj5rQwzobKmnCteVufjlvQ4kmDD3H
         4CmvlYcsDAFPF8RCJZJL2OW28y/2xmjAA3r7uOoiH9XwhQ4hLedN3Nt6Zk/uDpKTNUZi
         u53FwJRg8IVu5fFXxIhCdfaz8/7HqQkPqVjHZbD/ab6tG7JecHXEAI863o31fB9Hwtrg
         lTh0GLp/sSZMDWxoXuxOqVGDYMVEgRQUz+j1DRHdTNJngaDSlG5A6PLsRBinNtFGR5Zj
         ZZSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=mQMIBEfElIB3kvBnOsuCEqCsG8lgAhZ47Rfx4ZM1zmQ=;
        b=Y0CfY1ckpgkYamhArrCdTEmuAGxljwst8KlHwP/8+QFd8eoIRiQ1ErqiHd3alhH1Pt
         /SJiukMy1ddNGJA/LtMuHcGOcnw8JVsdYlCrnJJzFILfak3/q5vNm29++cxXdJ8pN2zg
         muYec8tl7ICGBGN7tKFk5A1ddVUqBVVG/cKAtURN9VqXfzeuGbfEJcBXyYKNMgtZlTPD
         l8rJg7zvbv6wuNgtk33ATHh2yjFpV9gmA6hG+QrVh0I0EG8xfeXcD0HmGXnsdpdQsz8U
         uNnKxkdPiGPd7FxLyz8J05ZS41N7q7Q+fIoxbV3FIjL56mRySCXtDu18wlkpt3UmCnck
         qjHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kZmAdTXA;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l9si242672qkg.5.2020.01.08.12.06.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:06:24 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D0CD320705;
	Wed,  8 Jan 2020 20:06:14 +0000 (UTC)
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
Subject: [PATCH v2 4/9] virtio: pci: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:23 +0100
Message-Id: <20200108200528.4614-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kZmAdTXA;       spf=pass
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
 drivers/virtio/virtio_pci_modern.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index 7abcc50838b8..fc58db4ab6c3 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -26,16 +26,16 @@
  * method, i.e. 32-bit accesses for 32-bit fields, 16-bit accesses
  * for 16-bit fields and 8-bit accesses for 8-bit fields.
  */
-static inline u8 vp_ioread8(u8 __iomem *addr)
+static inline u8 vp_ioread8(const u8 __iomem *addr)
 {
 	return ioread8(addr);
 }
-static inline u16 vp_ioread16 (__le16 __iomem *addr)
+static inline u16 vp_ioread16 (const __le16 __iomem *addr)
 {
 	return ioread16(addr);
 }
 
-static inline u32 vp_ioread32(__le32 __iomem *addr)
+static inline u32 vp_ioread32(const __le32 __iomem *addr)
 {
 	return ioread32(addr);
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-5-krzk%40kernel.org.

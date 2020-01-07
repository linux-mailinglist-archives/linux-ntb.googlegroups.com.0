Return-Path: <linux-ntb+bncBC6JD5V23ENBBQHP2LYAKGQE2T5OIJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F6D132BB3
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:54:27 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id i196sf15632pfe.6
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:54:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416064; cv=pass;
        d=google.com; s=arc-20160816;
        b=CAgtNQwbVHQDh5HI81N15prVi0IBOXSDYoKEXJGxSEJKlAJ6ekrmR9d1OUwmn6PoWd
         CsefPXb/P8L27k72eK9YzntIamTSi2e0AvksgJDYDd4ovRw+8LyoBHouhs4ru6kU5Iqv
         sZYlUvFs5jiwrZDk4iKjHRM5ZBOOzYxUYNYcw73jt67tvON0ezqmpay1+F1psO9lTZlX
         mHfJ5QsSjNmPwag4eu14PHyQ2nyBrxc6Uex1MKfUUP1foC4WJpyBiydN09XbEh1fLfdg
         eQ3Yiy2BlQ1zOS23CeEANGTMmod6+8F45HRHIXQ3H/KrgHLjDgyir4LATmzALUu9Q8R9
         eWFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=GIesxiZ7q2gdbJW1J+vtOeGeNxF4bG4k8Bhk44iTo/c=;
        b=vPGyDmePmrcMLXdvP5oytPGGH+A7c6iDgybiB7vUowSUMa95Xd2rtBAVtH9LcPL6SL
         l2enW5nU8SfxlslPCNKz36ujQBkHje8XbIoS4i2lS2VW7y1RtzS8UncDr7wspBD3XCtk
         EY5Sl87+Sygipak9cTLJURSrxdhAerqPrtG+Qbahro5XFKmltwk4cBlMRaPWA3WfthkP
         bUiL3CYvKieaq410GPuotDsluXcF6laO9wziBk83TPaHi9b+LkBpKrkMo7WwhS3R/MRc
         8du70Vdv7n4m1Azo9XZ0jzB3ulLiQRWOP0B4OSXK8iA1GmidrzKdUjc9C2lhGnrVm127
         J3/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IMHrx9nA;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GIesxiZ7q2gdbJW1J+vtOeGeNxF4bG4k8Bhk44iTo/c=;
        b=HwJ+umr23FkOMXmwp67zkAfi2/EWQM/cpzI6P/r3Bb0ZuMqBgU4oJNIQl+RIztzCtQ
         +sjaf+zI3r+fTwJ7iRKrdrbRaHrug2Sze8u/iZ/lrlsX1w9cJrjxCIe53O31o+ggmSEi
         tVE4/gE23DdwHTjrUZMhYE+/d3FAVf5VxA/z1uiYkfljrmjpyhjFO5IM0nn7y1HDdPMU
         FOQiUepBMl52AXOqLGg+OF9qhNSvlzOuSksgTCMeMWyuILv7eKqYPyyWd+EipvzCR5rh
         ogdXj2cdOk/pYiquP7BgN6Cki3M5jdmv642wlfZjq7mEkRcUU0h5glZNTRKY71gOTUff
         2eBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GIesxiZ7q2gdbJW1J+vtOeGeNxF4bG4k8Bhk44iTo/c=;
        b=BP1Nvzb72rGaH/pZ4yr5ukaaKAMRg/wU5kExZg/lRUMZTMrouvEOUPqKB0SWVHTTOm
         Ha97A+KspqqB3dAdJHtJd5rKm5WYpkKRQYfvePHrd5p0o78XsoCU63E8YyyGTAkJSd7X
         MeYvdjOIyeBqPR0Kh73rLEkILEyVgwW9EXDEs9nVgU9fgpzVONTcD/e5kQEw5h9k+qCs
         U+aE86Mo73Bal3sQbJXDRAtXTKgb3EDdUU2dTq8CH+3sCKQ4TWsOYtIP8SKD5z5Jwrjf
         5xQHDWiq5x0cw6Z9V+NTHRTcyo4AZfVIg2BDoD5wvDTlideSRA1bkQZRnAnQ6XdYxYAC
         mzgA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU1MWno7zwPGZ4y8qWDzoPi/vIpLfaXlKNSJrjoka6XEfje10IR
	q8ZWYjrf9hXOCmZIryhcPp8=
X-Google-Smtp-Source: APXvYqwOI/z7Xh5pWKUuTiKrq9i5Pqg0ml48z5XQ3sJlfq+tXbMXQkn5wAq+KOxi4kUu0JBDMw8xUg==
X-Received: by 2002:a63:5d03:: with SMTP id r3mr381779pgb.306.1578416064678;
        Tue, 07 Jan 2020 08:54:24 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:68cc:: with SMTP id k12ls178540pgt.15.gmail; Tue, 07 Jan
 2020 08:54:24 -0800 (PST)
X-Received: by 2002:a63:5fd7:: with SMTP id t206mr341373pgb.281.1578416064270;
        Tue, 07 Jan 2020 08:54:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416064; cv=none;
        d=google.com; s=arc-20160816;
        b=xYe9KgmPEoWXqt1GDgz5OWTkzu06J9RfvHZnXTs5q/8PZFxtmjWeHC6MPn4Lvl/C1M
         XF2h1U1dvAy5LPKNlTNQN5rJEiCZGtrgfxm/0nULBcfnLxuaLWYVNWbR8iGHCFZgcKeO
         YGw03LBcCiXBbqOdT4UWAOECfbijPyXNa7EVpPkAlR4x3Fi9dpqN+RJl6dBEGwgI3cFl
         DvrZ5+yIfPHQtLgQqtUKCkAgGdfVOpo3frKEz5xNpEwrUimEHD46Y9GaEmUPN046S2Ja
         LTaWK/wNeAZEJHn94TFDbWOJvlwNeTw+Cnee15MVWBWLbdFf5HZJIvsUqbOOs9Ug9l0X
         Eo6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=wIxrMcACvzbo9QFd6GOWnZLJLs8w3/Pl/BM1vjn+fcg=;
        b=b7Avc3idDN50VYMVTEndxsaRZhFbK6rOXKeVHnfAT64yF+/VuEOQ3kLVWFlRWLUZ7I
         EQAjZipU6Zqc6dxOgp6NIzajC5tFMMeSlsV+BiaaQQxs4vpNtMoyqu9Qv7OUx8aRTDno
         x9TAcoJIUdzWOhTef2YvcKqQv7Zcffdd3u7UsqoVHKkAu2R/RsLdaHxWZVdnL4nBNGte
         a5u1YITUD94I24s4W3UHOD8pI7XWeuP1R1ksQ4i+90mTk0CeLoeXb0r3utfkqVRx4EOf
         mQgsQ5/ScoBtXQlW3Nl1EQ8xoBYqHIB9TZd0heSwvyqEclW42dvHUMJ0UvhcI7SsMJai
         tqig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IMHrx9nA;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si10120pgj.0.2020.01.07.08.54.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:54:24 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2CEF024672;
	Tue,  7 Jan 2020 16:54:16 +0000 (UTC)
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
Subject: [RFT 04/13] parisc: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:03 +0100
Message-Id: <1578415992-24054-7-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IMHrx9nA;       spf=pass
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
 arch/parisc/include/asm/io.h |  4 ++--
 arch/parisc/lib/iomap.c      | 48 ++++++++++++++++++++++----------------------
 2 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/arch/parisc/include/asm/io.h b/arch/parisc/include/asm/io.h
index cab8f64ca4a2..f48fb8d76e15 100644
--- a/arch/parisc/include/asm/io.h
+++ b/arch/parisc/include/asm/io.h
@@ -303,8 +303,8 @@ extern void outsl (unsigned long port, const void *src, unsigned long count);
 #define ioread64be ioread64be
 #define iowrite64 iowrite64
 #define iowrite64be iowrite64be
-extern u64 ioread64(void __iomem *addr);
-extern u64 ioread64be(void __iomem *addr);
+extern u64 ioread64(const void __iomem *addr);
+extern u64 ioread64be(const void __iomem *addr);
 extern void iowrite64(u64 val, void __iomem *addr);
 extern void iowrite64be(u64 val, void __iomem *addr);
 
diff --git a/arch/parisc/lib/iomap.c b/arch/parisc/lib/iomap.c
index 0195aec657e2..e01345d2a7d9 100644
--- a/arch/parisc/lib/iomap.c
+++ b/arch/parisc/lib/iomap.c
@@ -43,13 +43,13 @@
 #endif
 
 struct iomap_ops {
-	unsigned int (*read8)(void __iomem *);
-	unsigned int (*read16)(void __iomem *);
-	unsigned int (*read16be)(void __iomem *);
-	unsigned int (*read32)(void __iomem *);
-	unsigned int (*read32be)(void __iomem *);
-	u64 (*read64)(void __iomem *);
-	u64 (*read64be)(void __iomem *);
+	unsigned int (*read8)(const void __iomem *);
+	unsigned int (*read16)(const void __iomem *);
+	unsigned int (*read16be)(const void __iomem *);
+	unsigned int (*read32)(const void __iomem *);
+	unsigned int (*read32be)(const void __iomem *);
+	u64 (*read64)(const void __iomem *);
+	u64 (*read64be)(const void __iomem *);
 	void (*write8)(u8, void __iomem *);
 	void (*write16)(u16, void __iomem *);
 	void (*write16be)(u16, void __iomem *);
@@ -69,17 +69,17 @@ struct iomap_ops {
 
 #define ADDR2PORT(addr) ((unsigned long __force)(addr) & 0xffffff)
 
-static unsigned int ioport_read8(void __iomem *addr)
+static unsigned int ioport_read8(const void __iomem *addr)
 {
 	return inb(ADDR2PORT(addr));
 }
 
-static unsigned int ioport_read16(void __iomem *addr)
+static unsigned int ioport_read16(const void __iomem *addr)
 {
 	return inw(ADDR2PORT(addr));
 }
 
-static unsigned int ioport_read32(void __iomem *addr)
+static unsigned int ioport_read32(const void __iomem *addr)
 {
 	return inl(ADDR2PORT(addr));
 }
@@ -150,37 +150,37 @@ static const struct iomap_ops ioport_ops = {
 
 /* Legacy I/O memory ops */
 
-static unsigned int iomem_read8(void __iomem *addr)
+static unsigned int iomem_read8(const void __iomem *addr)
 {
 	return readb(addr);
 }
 
-static unsigned int iomem_read16(void __iomem *addr)
+static unsigned int iomem_read16(const void __iomem *addr)
 {
 	return readw(addr);
 }
 
-static unsigned int iomem_read16be(void __iomem *addr)
+static unsigned int iomem_read16be(const void __iomem *addr)
 {
 	return __raw_readw(addr);
 }
 
-static unsigned int iomem_read32(void __iomem *addr)
+static unsigned int iomem_read32(const void __iomem *addr)
 {
 	return readl(addr);
 }
 
-static unsigned int iomem_read32be(void __iomem *addr)
+static unsigned int iomem_read32be(const void __iomem *addr)
 {
 	return __raw_readl(addr);
 }
 
-static u64 iomem_read64(void __iomem *addr)
+static u64 iomem_read64(const void __iomem *addr)
 {
 	return readq(addr);
 }
 
-static u64 iomem_read64be(void __iomem *addr)
+static u64 iomem_read64be(const void __iomem *addr)
 {
 	return __raw_readq(addr);
 }
@@ -297,49 +297,49 @@ static const struct iomap_ops *iomap_ops[8] = {
 };
 
 
-unsigned int ioread8(void __iomem *addr)
+unsigned int ioread8(const void __iomem *addr)
 {
 	if (unlikely(INDIRECT_ADDR(addr)))
 		return iomap_ops[ADDR_TO_REGION(addr)]->read8(addr);
 	return *((u8 *)addr);
 }
 
-unsigned int ioread16(void __iomem *addr)
+unsigned int ioread16(const void __iomem *addr)
 {
 	if (unlikely(INDIRECT_ADDR(addr)))
 		return iomap_ops[ADDR_TO_REGION(addr)]->read16(addr);
 	return le16_to_cpup((u16 *)addr);
 }
 
-unsigned int ioread16be(void __iomem *addr)
+unsigned int ioread16be(const void __iomem *addr)
 {
 	if (unlikely(INDIRECT_ADDR(addr)))
 		return iomap_ops[ADDR_TO_REGION(addr)]->read16be(addr);
 	return *((u16 *)addr);
 }
 
-unsigned int ioread32(void __iomem *addr)
+unsigned int ioread32(const void __iomem *addr)
 {
 	if (unlikely(INDIRECT_ADDR(addr)))
 		return iomap_ops[ADDR_TO_REGION(addr)]->read32(addr);
 	return le32_to_cpup((u32 *)addr);
 }
 
-unsigned int ioread32be(void __iomem *addr)
+unsigned int ioread32be(const void __iomem *addr)
 {
 	if (unlikely(INDIRECT_ADDR(addr)))
 		return iomap_ops[ADDR_TO_REGION(addr)]->read32be(addr);
 	return *((u32 *)addr);
 }
 
-u64 ioread64(void __iomem *addr)
+u64 ioread64(const void __iomem *addr)
 {
 	if (unlikely(INDIRECT_ADDR(addr)))
 		return iomap_ops[ADDR_TO_REGION(addr)]->read64(addr);
 	return le64_to_cpup((u64 *)addr);
 }
 
-u64 ioread64be(void __iomem *addr)
+u64 ioread64be(const void __iomem *addr)
 {
 	if (unlikely(INDIRECT_ADDR(addr)))
 		return iomap_ops[ADDR_TO_REGION(addr)]->read64be(addr);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-7-git-send-email-krzk%40kernel.org.

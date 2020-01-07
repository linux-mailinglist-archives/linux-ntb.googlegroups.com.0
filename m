Return-Path: <linux-ntb+bncBC6JD5V23ENBBSHP2LYAKGQE7X2TCCY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B74132BC7
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:54:34 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id i8sf257316ioi.0
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:54:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416073; cv=pass;
        d=google.com; s=arc-20160816;
        b=nD4Z0zggy0cDi76KsSOYXzy6UNYZSN/vBBjGxLkHNnqdGMXIndKsh3kLGbQ9DO/QUw
         8TqNs7g3sDU7Yp0Jxlw4GkDywI6IT//b+nifZd4mPj7x1HLdpqIi9XjEET0HWVwp2s+o
         5AK+KFqObTg4pnYVrr9KZbgLaCJehBpMrMm2virD/PxNUh51A6KeLPxoTCRu6jiFw7T1
         zjG2kZAH8mmi8EMjknoT96RVvzUX0vLBABNGgcF9HezgS1aGsyDqyeIW9zk/487AD/F7
         NqA69/c9h9FeHaNJam+MzJcR0d5Us/+ww2A1BxZFJHta/qYaDxwA7IzIPUzOswQ5nOfp
         Cf1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=LUPerZA5nQuCqTauPegb/BMTqJqw1BU5rLjex0zbDus=;
        b=wjAvnkXHmCNgxzEXcCrTvHvd0Fyo5DwAgpy5G87s/lXJZt1n0HZDnIXDOz6igJuGk6
         0r/kjM56apAFdY3k4Me0lKHiSpw1L8iwjk79YC2bZUlEND3cYU6Bvwwv4YrDqsj8Gvt4
         z9w6bgbIQsKuV7FjUa5GOy+5kPXaJm0TMCB3L3P3cm8JnLfVnhUpLIYOb9cz91s1d9uv
         PeMRt7xYXxipGKMPETWvcwEjPEFTahE4R2SzoQWat3H/PwhWPVfqxKlXceTgkGJMGy06
         BkXFiWavA6ed5IlpyKuqe1eTxRk9sflJfzIQPHX4CJCONTnD1Up0FFAxihiLjvJnSmwS
         qJhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nPI0cC7r;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LUPerZA5nQuCqTauPegb/BMTqJqw1BU5rLjex0zbDus=;
        b=Idp0d5tDFSbLq3DQ9W9S8BGJ+vh5CRgQVcvd19Yus2bzsLiO3uDNlJAeVjSWoe4IQS
         k1F3rgCa5w+E03/8yWAxiSCqrYLc3+WhlTpzffhabJbXUCyNuuPpl69rU1NK7UI+6R1I
         0Vtga3OxYkWLEsBQsj4wFKW+chHGDBvMgoMDdBIo6BUwwOPoxyCbANlG2KayWHQ0hT4r
         JszZZ6PBrbz1Rwnu6nsV7B4IoJHgSgi2qdL86mVMBxjahYpi8FHU5msb8sICBwXapCKz
         nNpkk2jrKayA6z/11bbg8EqUV1WLLNVflBL5GOU+JkOwmdYH7yRw7qeK+a8GDzBs5KU6
         OlaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LUPerZA5nQuCqTauPegb/BMTqJqw1BU5rLjex0zbDus=;
        b=eqYmgFkJ8GY74iAR0NNvebnzyskXGncGhRER3gAn32jWTLH/nEiJ4IpOVbrimMge4o
         TtHE+ZXPNcni3hYQTK5ti9+6xFw+LdGC5+/S/qP4MLwv1aUeFfKHlZvK46jBVoGGptVR
         SAuV5OsYoAk9PnFHALT4LPzocqBrsKegAnx4SbMQI6UofRpAvY4bjJ7lAi5cJVkB8TGf
         X4uc3qC0F1c3ORpWx6It0XYtawkI/FgrlwhrGcrmqCU1+cC9Qzx+eo6C/WBLLdUeu63k
         v/aHLudwKqczeiGDk5O/N6id2JNzSgRpc+fDXW35kNdnLg/U2l4BFJB/5UeylCspyPPN
         HsgA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU6ZYGauL4nqUw9/7/eUn/u7F+Y/7U0jSNO5gijvC0fwgISInMk
	smeRQjY8YFDUasVYY/7XV30=
X-Google-Smtp-Source: APXvYqwSXgnP0DpnH8IQg07s0AflSLvKCnhWoecU/HBdJNsnl1Wp57Fe3c1QHhYIWyICYH5rqFqA4w==
X-Received: by 2002:a5e:de04:: with SMTP id e4mr75244957iok.47.1578416072978;
        Tue, 07 Jan 2020 08:54:32 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:8d49:: with SMTP id p70ls8574iod.1.gmail; Tue, 07 Jan
 2020 08:54:32 -0800 (PST)
X-Received: by 2002:a6b:b20a:: with SMTP id b10mr74045863iof.87.1578416072652;
        Tue, 07 Jan 2020 08:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416072; cv=none;
        d=google.com; s=arc-20160816;
        b=Xd9VLa+Eu1cY0TaZNNuG31lue0o/0PGH11lsOzDi2Qq4rX7MfrNXi1rUxu8/OAxTYh
         WJw32KV60E9IOrEVq/DeeEDcDI65Iq4EVvIof/XegdrVR8LS3a+HPoipWf8jgMz0qDPI
         72A/bOxvPXVr56BRM7fsZdKKnj+aWmpFF9gPQhtXd/uqJQuWkW6aJKi2S+1iiynMBlEq
         22DGPFKKb7R4lndAv2pVipFly3CeU61GlqzybXyHkTCveRoeURXFGIiPk8fUyRf0mBhV
         i+V4vmdIfIvFTkSacOshBB8hCyX5IE0ylDglmvu9X6bcgTFGNPqM/h8t5G3v8pPFbJHX
         Hwtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=98P2japITKvXoEGBa1BHDwsKsjjjRb42UE97jN6j27k=;
        b=IW1EogAeO2X9fKkVwPWDqU4gpTeXO7bIRVkV7j7HW3VxnX44ALmG2GrLkcB2MIwR06
         R1yVn3d2p9/lYLL0HC746N4QjrEW/fNsTIacVRMr/XKlDlYlw+rOH0pdVZnEQLnGQwuY
         HYRum7WNhJas1Ki6aJcWbT1nrIsj3JEzDm8M8adKHbe+99E+GwcQAhvYUiyEi+HjP7OW
         v5SVsg6h1UWP8Gvj0CZtmbAxFKsu60bH5vMrnL5MFwl0PWgXNxrjJskOBs3EpzmoXGPd
         XpTWNT6xHD2LTwPjhc+dQfJKWMSJyVjUGYZlmDa+rSj7bpKVE2wTTSETdn9CIst8rLHM
         xlFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nPI0cC7r;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k9si19768ili.4.2020.01.07.08.54.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:54:32 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6B861214D8;
	Tue,  7 Jan 2020 16:54:24 +0000 (UTC)
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
Subject: [RFT 05/13] powerpc: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:04 +0100
Message-Id: <1578415992-24054-8-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nPI0cC7r;       spf=pass
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
 arch/powerpc/kernel/iomap.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/powerpc/kernel/iomap.c b/arch/powerpc/kernel/iomap.c
index 5ac84efc6ede..de8da1c3496f 100644
--- a/arch/powerpc/kernel/iomap.c
+++ b/arch/powerpc/kernel/iomap.c
@@ -15,23 +15,23 @@
  * Here comes the ppc64 implementation of the IOMAP 
  * interfaces.
  */
-unsigned int ioread8(void __iomem *addr)
+unsigned int ioread8(const void __iomem *addr)
 {
 	return readb(addr);
 }
-unsigned int ioread16(void __iomem *addr)
+unsigned int ioread16(const void __iomem *addr)
 {
 	return readw(addr);
 }
-unsigned int ioread16be(void __iomem *addr)
+unsigned int ioread16be(const void __iomem *addr)
 {
 	return readw_be(addr);
 }
-unsigned int ioread32(void __iomem *addr)
+unsigned int ioread32(const void __iomem *addr)
 {
 	return readl(addr);
 }
-unsigned int ioread32be(void __iomem *addr)
+unsigned int ioread32be(const void __iomem *addr)
 {
 	return readl_be(addr);
 }
@@ -41,27 +41,27 @@ EXPORT_SYMBOL(ioread16be);
 EXPORT_SYMBOL(ioread32);
 EXPORT_SYMBOL(ioread32be);
 #ifdef __powerpc64__
-u64 ioread64(void __iomem *addr)
+u64 ioread64(const void __iomem *addr)
 {
 	return readq(addr);
 }
-u64 ioread64_lo_hi(void __iomem *addr)
+u64 ioread64_lo_hi(const void __iomem *addr)
 {
 	return readq(addr);
 }
-u64 ioread64_hi_lo(void __iomem *addr)
+u64 ioread64_hi_lo(const void __iomem *addr)
 {
 	return readq(addr);
 }
-u64 ioread64be(void __iomem *addr)
+u64 ioread64be(const void __iomem *addr)
 {
 	return readq_be(addr);
 }
-u64 ioread64be_lo_hi(void __iomem *addr)
+u64 ioread64be_lo_hi(const void __iomem *addr)
 {
 	return readq_be(addr);
 }
-u64 ioread64be_hi_lo(void __iomem *addr)
+u64 ioread64be_hi_lo(const void __iomem *addr)
 {
 	return readq_be(addr);
 }
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-8-git-send-email-krzk%40kernel.org.

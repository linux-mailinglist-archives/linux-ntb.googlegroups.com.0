Return-Path: <linux-ntb+bncBC6JD5V23ENBBL7P2LYAKGQEZEGDLAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFCE132B8F
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:54:10 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id s9sf52362ilk.0
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:54:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416049; cv=pass;
        d=google.com; s=arc-20160816;
        b=uhvHvAFtwaXFtLbXP415E5jCd8ghpmvKxe/3AcTwxXzBI4Ibu5czzu4trOjvLKgor1
         tmknS/7/OLG/Dtylp08SiamoJQ3SP9RuH4ZgYnLFaANwlWYzrP/LyC0PdkvX+COhKuz+
         +ds0z6uvepKLuNBMjjZPI1zDeDOtdnwK3iO1NfZhJkz1H8uBxceC+9KvV6VYopskmooU
         R+QSKjXPIXWRlY007cbazg3Ok+IyHUNyHYprZGMijo6+C0IBEEjfFOIYXn3itb9K4A4I
         MwmaRygsK3ySbbWTnTj/l0gDW2raBgSejm+ypfp6y3iy8p9X2ppMedNTiFUbi2o3JnF8
         sEKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=CB5W9ik4kaH0cxP9dqU6FiYRWyicnXiSwYbNixjzxGQ=;
        b=F8lDSxZDR/5CTvHPnN3b455e66Uity9aG/gUOzIheXOO6NssA6kw2w5E3dKNFkurBZ
         DAlVcT8HOiRwdnaUzxEj7ZMExH3kqUwseC+2xVtuHziJ6LHe8vAvc2VDxjyb8AwtB0Bv
         qybL3xOfstxS065rc3an9ep+LAGN0AqAqp4IGFXJY2gTKygLE4Gq++SUZpdV3sLlYcV+
         101IVILPzl+sFz6vuTekew/T9pNfPyMEJYOzSmpNd736QHoyO1l9Dwpud82+5nCfZ8w2
         Jc7eCPuDdPR6nRi00UJfQc/e751hXTRhFVtU5Spg/tVGa9XgAe7BnvapTxKxkg1du7GH
         0bxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ffKPTmbQ;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CB5W9ik4kaH0cxP9dqU6FiYRWyicnXiSwYbNixjzxGQ=;
        b=S1cJgj8AGk+b9elTjGUiBMOOsN0gBbzptm/HUnuwZcYRElUPLSfmQogBO4gKRDKEi4
         lse2RTCAOzh90yomLFW0LI1QZ82rptksbPCLKFbzHz8YVtXSQ7XLA9rbbigAyVUiKRr+
         5C3Jb7Uh8pLFqbyqMA3O3/3QOBVuEfetMmEjgP4ZM+A2rWp+Kobp/Y1jYuPVnqnQjQt5
         vSJRT7VH0Hu1qR2XLKTPxoNmDGhOHy/qPvZoF5HH+CEbmdz6j7HEqkGkDxuaXJAIOHGF
         hVaSSd8TW5VL/lOUIZZb8vnHk+DE0FX2NrXK6k++KbiCKGA18z6GcQzGw5LdhmFy2qmp
         dD4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CB5W9ik4kaH0cxP9dqU6FiYRWyicnXiSwYbNixjzxGQ=;
        b=Ild2RvVmVWLlFo/za2kgMg0XLWIV0q76hkAUejzuuNOC2+485+ronQYcvHmPHSXlAc
         YGd6nEjrUAIzXfm//irEADS73yVnUvjWZhYu8QMCkjyBLsw/ZBAkaerAb38XaZ1vp57Q
         D+OLk6CMLKL2JaunSlbz9xe0bIviDTG4JThd/dVFUmMxyUbanE0xYobWiR0y0Jgczn/o
         Jg5zMi1npluKox+Qmev9Qy9KYTDSz3whAXyZTcHV8joylcBSvcatc5YM3kHZ9MwKJAhj
         Fq3KrS4EoXjN6oYpoAbWz5vmwmkfmI/JUoJOrSGAJe4+3Cs2SQfw6NSPAOkAydYgGR1x
         Tu4Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV0N3cZqTK0dwsKDwkOG+PAeMSYFLnwIwrJKEt9rjABb/LxGU9T
	oXVzCVYSuPmTxVi0nbhj8ts=
X-Google-Smtp-Source: APXvYqw0Hi9SLyRngdx/2kigz1qASSacTvCFgqvA66UMZknjzPl1C4YpW6pIGrB3WtPFbGDmu8T77w==
X-Received: by 2002:a02:838b:: with SMTP id z11mr378708jag.127.1578416047295;
        Tue, 07 Jan 2020 08:54:07 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:8789:: with SMTP id f9ls4017ion.9.gmail; Tue, 07 Jan
 2020 08:54:07 -0800 (PST)
X-Received: by 2002:a5e:8612:: with SMTP id z18mr74925098ioj.206.1578416046963;
        Tue, 07 Jan 2020 08:54:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416046; cv=none;
        d=google.com; s=arc-20160816;
        b=TcDX9JgDrax9sDYwzjmmvack6bdcmcn5f6hZj2rFlsPAYH3Ldf4omHlpmHvwo7qeEM
         DXuBVeENww3XLrkXdXtmKOp62NA0HRNhhD8yO4hmuG/HjWYzLSqYYznYGSDKxTyGMuaq
         qMScCrcttCbHmckmHK7qEbmo1deAXjv0nKXwwfpX2uxPyxdyelzi5OA+LcMKW0TiGeqs
         so4hlf7KGD1FbhPJb2wlLOga+s6ocuZ2YumYxaaPaMpEmhVxrZCk7IAQqUmkLXJ4QbBx
         10f+cxif3yNcminLTrjBSFCRa3ZSyNHVT2cfZ/jjfrmVdhdMh2yVyt8XjrLcJARIUh7k
         3HbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7uWWesHZwG+qdUlwi6n80x9MET7pBMRH4ZFt/QkVJ0w=;
        b=Cs+HePHeuj47HRobotwRnSFg5cD+LWTc2BKQqIWxb0M2VRWT7ZJIWHbiu3ykDdfgQa
         XQ7FjtfqX/kCgx7pU+CF+D5vRG3kHU6xCnTTwSVGZzmZ5bB0DibNfDJQwDTcP3FJzsIk
         2Lyi7CIFDK2HHHUPkDNY0tvMfoFuy8+u4QivF3KN3ozWFdL4rA846AsmuXvoTAjlfmr4
         r+KqfBe0J492fNhjcYlT0ESRe8V2oUFAEansbKc8tWTv2i/VuYww4Khtfki8sIc5xC+y
         C86E8tzZVx9AY6WihRexDswjjdyXDQx/g5kQM6elzwE9iZBi0bnrkq0lWbMwqgBjbSFj
         oB7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ffKPTmbQ;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si12799ioe.5.2020.01.07.08.54.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:54:06 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D6C7A24656;
	Tue,  7 Jan 2020 16:53:57 +0000 (UTC)
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
Subject: [RFT 03/13] alpha: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:01 +0100
Message-Id: <1578415992-24054-5-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ffKPTmbQ;       spf=pass
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
 arch/alpha/include/asm/core_apecs.h  |  6 +++---
 arch/alpha/include/asm/core_cia.h    |  6 +++---
 arch/alpha/include/asm/core_lca.h    |  6 +++---
 arch/alpha/include/asm/core_marvel.h |  4 ++--
 arch/alpha/include/asm/core_mcpcia.h |  6 +++---
 arch/alpha/include/asm/core_t2.h     |  2 +-
 arch/alpha/include/asm/io.h          | 12 ++++++------
 arch/alpha/include/asm/io_trivial.h  | 16 ++++++++--------
 arch/alpha/include/asm/jensen.h      |  2 +-
 arch/alpha/include/asm/machvec.h     |  6 +++---
 arch/alpha/kernel/core_marvel.c      |  2 +-
 arch/alpha/kernel/io.c               |  6 +++---
 12 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/arch/alpha/include/asm/core_apecs.h b/arch/alpha/include/asm/core_apecs.h
index 0a07055bc0fe..2d9726fc02ef 100644
--- a/arch/alpha/include/asm/core_apecs.h
+++ b/arch/alpha/include/asm/core_apecs.h
@@ -384,7 +384,7 @@ struct el_apecs_procdata
 		}						\
 	} while (0)
 
-__EXTERN_INLINE unsigned int apecs_ioread8(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int apecs_ioread8(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	unsigned long result, base_and_type;
@@ -420,7 +420,7 @@ __EXTERN_INLINE void apecs_iowrite8(u8 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + base_and_type) = w;
 }
 
-__EXTERN_INLINE unsigned int apecs_ioread16(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int apecs_ioread16(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	unsigned long result, base_and_type;
@@ -456,7 +456,7 @@ __EXTERN_INLINE void apecs_iowrite16(u16 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + base_and_type) = w;
 }
 
-__EXTERN_INLINE unsigned int apecs_ioread32(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int apecs_ioread32(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	if (addr < APECS_DENSE_MEM)
diff --git a/arch/alpha/include/asm/core_cia.h b/arch/alpha/include/asm/core_cia.h
index c706a7f2b061..cb22991f6761 100644
--- a/arch/alpha/include/asm/core_cia.h
+++ b/arch/alpha/include/asm/core_cia.h
@@ -342,7 +342,7 @@ struct el_CIA_sysdata_mcheck {
 #define vuip	volatile unsigned int __force *
 #define vulp	volatile unsigned long __force *
 
-__EXTERN_INLINE unsigned int cia_ioread8(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int cia_ioread8(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	unsigned long result, base_and_type;
@@ -374,7 +374,7 @@ __EXTERN_INLINE void cia_iowrite8(u8 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + base_and_type) = w;
 }
 
-__EXTERN_INLINE unsigned int cia_ioread16(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int cia_ioread16(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	unsigned long result, base_and_type;
@@ -404,7 +404,7 @@ __EXTERN_INLINE void cia_iowrite16(u16 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + base_and_type) = w;
 }
 
-__EXTERN_INLINE unsigned int cia_ioread32(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int cia_ioread32(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	if (addr < CIA_DENSE_MEM)
diff --git a/arch/alpha/include/asm/core_lca.h b/arch/alpha/include/asm/core_lca.h
index 84d5e5b84f4f..ec86314418cb 100644
--- a/arch/alpha/include/asm/core_lca.h
+++ b/arch/alpha/include/asm/core_lca.h
@@ -230,7 +230,7 @@ union el_lca {
 	} while (0)
 
 
-__EXTERN_INLINE unsigned int lca_ioread8(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int lca_ioread8(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	unsigned long result, base_and_type;
@@ -266,7 +266,7 @@ __EXTERN_INLINE void lca_iowrite8(u8 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + base_and_type) = w;
 }
 
-__EXTERN_INLINE unsigned int lca_ioread16(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int lca_ioread16(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	unsigned long result, base_and_type;
@@ -302,7 +302,7 @@ __EXTERN_INLINE void lca_iowrite16(u16 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + base_and_type) = w;
 }
 
-__EXTERN_INLINE unsigned int lca_ioread32(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int lca_ioread32(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	if (addr < LCA_DENSE_MEM)
diff --git a/arch/alpha/include/asm/core_marvel.h b/arch/alpha/include/asm/core_marvel.h
index cc6fd92d5fa9..b266e02e284b 100644
--- a/arch/alpha/include/asm/core_marvel.h
+++ b/arch/alpha/include/asm/core_marvel.h
@@ -332,10 +332,10 @@ struct io7 {
 #define vucp	volatile unsigned char __force *
 #define vusp	volatile unsigned short __force *
 
-extern unsigned int marvel_ioread8(void __iomem *);
+extern unsigned int marvel_ioread8(const void __iomem *);
 extern void marvel_iowrite8(u8 b, void __iomem *);
 
-__EXTERN_INLINE unsigned int marvel_ioread16(void __iomem *addr)
+__EXTERN_INLINE unsigned int marvel_ioread16(const void __iomem *addr)
 {
 	return __kernel_ldwu(*(vusp)addr);
 }
diff --git a/arch/alpha/include/asm/core_mcpcia.h b/arch/alpha/include/asm/core_mcpcia.h
index b30dc128210d..cb24d1bd6141 100644
--- a/arch/alpha/include/asm/core_mcpcia.h
+++ b/arch/alpha/include/asm/core_mcpcia.h
@@ -267,7 +267,7 @@ extern inline int __mcpcia_is_mmio(unsigned long addr)
 	return (addr & 0x80000000UL) == 0;
 }
 
-__EXTERN_INLINE unsigned int mcpcia_ioread8(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int mcpcia_ioread8(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long)xaddr & MCPCIA_MEM_MASK;
 	unsigned long hose = (unsigned long)xaddr & ~MCPCIA_MEM_MASK;
@@ -291,7 +291,7 @@ __EXTERN_INLINE void mcpcia_iowrite8(u8 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + hose + 0x00) = w;
 }
 
-__EXTERN_INLINE unsigned int mcpcia_ioread16(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int mcpcia_ioread16(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long)xaddr & MCPCIA_MEM_MASK;
 	unsigned long hose = (unsigned long)xaddr & ~MCPCIA_MEM_MASK;
@@ -315,7 +315,7 @@ __EXTERN_INLINE void mcpcia_iowrite16(u16 b, void __iomem *xaddr)
 	*(vuip) ((addr << 5) + hose + 0x08) = w;
 }
 
-__EXTERN_INLINE unsigned int mcpcia_ioread32(void __iomem *xaddr)
+__EXTERN_INLINE unsigned int mcpcia_ioread32(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long)xaddr;
 
diff --git a/arch/alpha/include/asm/core_t2.h b/arch/alpha/include/asm/core_t2.h
index e0b33d09e93a..12bb7addc789 100644
--- a/arch/alpha/include/asm/core_t2.h
+++ b/arch/alpha/include/asm/core_t2.h
@@ -572,7 +572,7 @@ __EXTERN_INLINE int t2_is_mmio(const volatile void __iomem *addr)
    it doesn't make sense to merge the pio and mmio routines.  */
 
 #define IOPORT(OS, NS)							\
-__EXTERN_INLINE unsigned int t2_ioread##NS(void __iomem *xaddr)		\
+__EXTERN_INLINE unsigned int t2_ioread##NS(const void __iomem *xaddr)		\
 {									\
 	if (t2_is_mmio(xaddr))						\
 		return t2_read##OS(xaddr);				\
diff --git a/arch/alpha/include/asm/io.h b/arch/alpha/include/asm/io.h
index d1ed5a8133c5..cc12ec74175c 100644
--- a/arch/alpha/include/asm/io.h
+++ b/arch/alpha/include/asm/io.h
@@ -151,9 +151,9 @@ static inline void generic_##NAME(TYPE b, QUAL void __iomem *addr)	\
 	alpha_mv.mv_##NAME(b, addr);					\
 }
 
-REMAP1(unsigned int, ioread8, /**/)
-REMAP1(unsigned int, ioread16, /**/)
-REMAP1(unsigned int, ioread32, /**/)
+REMAP1(unsigned int, ioread8, const)
+REMAP1(unsigned int, ioread16, const)
+REMAP1(unsigned int, ioread32, const)
 REMAP1(u8, readb, const volatile)
 REMAP1(u16, readw, const volatile)
 REMAP1(u32, readl, const volatile)
@@ -308,14 +308,14 @@ static inline int __is_mmio(const volatile void __iomem *addr)
  */
 
 #if IO_CONCAT(__IO_PREFIX,trivial_io_bw)
-extern inline unsigned int ioread8(void __iomem *addr)
+extern inline unsigned int ioread8(const void __iomem *addr)
 {
 	unsigned int ret = IO_CONCAT(__IO_PREFIX,ioread8)(addr);
 	mb();
 	return ret;
 }
 
-extern inline unsigned int ioread16(void __iomem *addr)
+extern inline unsigned int ioread16(const void __iomem *addr)
 {
 	unsigned int ret = IO_CONCAT(__IO_PREFIX,ioread16)(addr);
 	mb();
@@ -356,7 +356,7 @@ extern inline void outw(u16 b, unsigned long port)
 #endif
 
 #if IO_CONCAT(__IO_PREFIX,trivial_io_lq)
-extern inline unsigned int ioread32(void __iomem *addr)
+extern inline unsigned int ioread32(const void __iomem *addr)
 {
 	unsigned int ret = IO_CONCAT(__IO_PREFIX,ioread32)(addr);
 	mb();
diff --git a/arch/alpha/include/asm/io_trivial.h b/arch/alpha/include/asm/io_trivial.h
index ba3d8f0cfe0c..a1a29cbe02fa 100644
--- a/arch/alpha/include/asm/io_trivial.h
+++ b/arch/alpha/include/asm/io_trivial.h
@@ -7,15 +7,15 @@
 
 #if IO_CONCAT(__IO_PREFIX,trivial_io_bw)
 __EXTERN_INLINE unsigned int
-IO_CONCAT(__IO_PREFIX,ioread8)(void __iomem *a)
+IO_CONCAT(__IO_PREFIX,ioread8)(const void __iomem *a)
 {
-	return __kernel_ldbu(*(volatile u8 __force *)a);
+	return __kernel_ldbu(*(const volatile u8 __force *)a);
 }
 
 __EXTERN_INLINE unsigned int
-IO_CONCAT(__IO_PREFIX,ioread16)(void __iomem *a)
+IO_CONCAT(__IO_PREFIX,ioread16)(const void __iomem *a)
 {
-	return __kernel_ldwu(*(volatile u16 __force *)a);
+	return __kernel_ldwu(*(const volatile u16 __force *)a);
 }
 
 __EXTERN_INLINE void
@@ -33,9 +33,9 @@ IO_CONCAT(__IO_PREFIX,iowrite16)(u16 b, void __iomem *a)
 
 #if IO_CONCAT(__IO_PREFIX,trivial_io_lq)
 __EXTERN_INLINE unsigned int
-IO_CONCAT(__IO_PREFIX,ioread32)(void __iomem *a)
+IO_CONCAT(__IO_PREFIX,ioread32)(const void __iomem *a)
 {
-	return *(volatile u32 __force *)a;
+	return *(const volatile u32 __force *)a;
 }
 
 __EXTERN_INLINE void
@@ -73,14 +73,14 @@ IO_CONCAT(__IO_PREFIX,writew)(u16 b, volatile void __iomem *a)
 __EXTERN_INLINE u8
 IO_CONCAT(__IO_PREFIX,readb)(const volatile void __iomem *a)
 {
-	void __iomem *addr = (void __iomem *)a;
+	const void __iomem *addr = (const void __iomem *)a;
 	return IO_CONCAT(__IO_PREFIX,ioread8)(addr);
 }
 
 __EXTERN_INLINE u16
 IO_CONCAT(__IO_PREFIX,readw)(const volatile void __iomem *a)
 {
-	void __iomem *addr = (void __iomem *)a;
+	const void __iomem *addr = (const void __iomem *)a;
 	return IO_CONCAT(__IO_PREFIX,ioread16)(addr);
 }
 
diff --git a/arch/alpha/include/asm/jensen.h b/arch/alpha/include/asm/jensen.h
index 436dc905b6ad..916895155a88 100644
--- a/arch/alpha/include/asm/jensen.h
+++ b/arch/alpha/include/asm/jensen.h
@@ -305,7 +305,7 @@ __EXTERN_INLINE int jensen_is_mmio(const volatile void __iomem *addr)
    that it doesn't make sense to merge them.  */
 
 #define IOPORT(OS, NS)							\
-__EXTERN_INLINE unsigned int jensen_ioread##NS(void __iomem *xaddr)	\
+__EXTERN_INLINE unsigned int jensen_ioread##NS(const void __iomem *xaddr)	\
 {									\
 	if (jensen_is_mmio(xaddr))					\
 		return jensen_read##OS(xaddr - 0x100000000ul);		\
diff --git a/arch/alpha/include/asm/machvec.h b/arch/alpha/include/asm/machvec.h
index a6b73c6d10ee..a4e96e2bec74 100644
--- a/arch/alpha/include/asm/machvec.h
+++ b/arch/alpha/include/asm/machvec.h
@@ -46,9 +46,9 @@ struct alpha_machine_vector
 	void (*mv_pci_tbi)(struct pci_controller *hose,
 			   dma_addr_t start, dma_addr_t end);
 
-	unsigned int (*mv_ioread8)(void __iomem *);
-	unsigned int (*mv_ioread16)(void __iomem *);
-	unsigned int (*mv_ioread32)(void __iomem *);
+	unsigned int (*mv_ioread8)(const void __iomem *);
+	unsigned int (*mv_ioread16)(const void __iomem *);
+	unsigned int (*mv_ioread32)(const void __iomem *);
 
 	void (*mv_iowrite8)(u8, void __iomem *);
 	void (*mv_iowrite16)(u16, void __iomem *);
diff --git a/arch/alpha/kernel/core_marvel.c b/arch/alpha/kernel/core_marvel.c
index 1db9d0eb2922..37514422f586 100644
--- a/arch/alpha/kernel/core_marvel.c
+++ b/arch/alpha/kernel/core_marvel.c
@@ -807,7 +807,7 @@ void __iomem *marvel_ioportmap (unsigned long addr)
 }
 
 unsigned int
-marvel_ioread8(void __iomem *xaddr)
+marvel_ioread8(const void __iomem *xaddr)
 {
 	unsigned long addr = (unsigned long) xaddr;
 	if (__marvel_is_port_kbd(addr))
diff --git a/arch/alpha/kernel/io.c b/arch/alpha/kernel/io.c
index c025a3e5e357..e49918b91fee 100644
--- a/arch/alpha/kernel/io.c
+++ b/arch/alpha/kernel/io.c
@@ -14,21 +14,21 @@
    "generic", which bumps through the machine vector.  */
 
 unsigned int
-ioread8(void __iomem *addr)
+ioread8(const void __iomem *addr)
 {
 	unsigned int ret = IO_CONCAT(__IO_PREFIX,ioread8)(addr);
 	mb();
 	return ret;
 }
 
-unsigned int ioread16(void __iomem *addr)
+unsigned int ioread16(const void __iomem *addr)
 {
 	unsigned int ret = IO_CONCAT(__IO_PREFIX,ioread16)(addr);
 	mb();
 	return ret;
 }
 
-unsigned int ioread32(void __iomem *addr)
+unsigned int ioread32(const void __iomem *addr)
 {
 	unsigned int ret = IO_CONCAT(__IO_PREFIX,ioread32)(addr);
 	mb();
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-5-git-send-email-krzk%40kernel.org.

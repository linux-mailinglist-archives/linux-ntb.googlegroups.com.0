Return-Path: <linux-ntb+bncBC6JD5V23ENBBY7LWXZAKGQEKZYLHQI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id A17F0164CEB
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:52:36 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id e84sf1022123ybe.5
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:52:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134755; cv=pass;
        d=google.com; s=arc-20160816;
        b=loH02lIztp3aOZ7gLVtTtU01hokDtGO6t9SRgCvKyiorTzkL6jcvAykLn5I692zNWC
         +S4g6FFw3RA84BhT+NOU1pco05K21pPC3Frblh5Z0KWGNOyUUA7NM+rG0xiw+7JsFZH8
         GzwgykH167FMTV9uOV4UnR6z1BFykryTfr366KVFfkn8GkU0U0vpedB7aPyKIvdX7IrN
         dHYtPgQCDDICCw3PGNkfRYeJOt0sFExqPZKwcFjcIoLOSG2EGYU4G4UAUUzFQ6j70t4x
         ZneE8LdjD7nfJul9pZtRHe29y756Sx61rOtymIYjua4nf23xconR+5MvMuwdQ7HRmMPY
         o+tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=KvoRCY5I+iUZgQiQf9x71i3i0rg0Ldzm3DhJAaepRKw=;
        b=AWn0EOyYgjrqChG4Z+5WXhAqLtr4aRGiJbTi2wCskAkb85nTZLbyw80BJZOtRMImSe
         w1Ka9/iz6eFLTrJhUrbIwnjPZbSDvjNrh0ifiHM/2UbGDTjfrHHBGkhGLlGmIGmw/dl1
         NSVi9vGkSj1bb9eDpBkomRWwpDvzi4nm7UwWiLpHDMMVg/A8hT0VQzCOnTDWOa/cJhmm
         U2DEJE4oiejxvf1bsHu/ybU1Zox4RB7v0D7eboulu0ZBDl2NIxyOPAxLF9ddhTdJBxU8
         h2UQ0RU/yBYklPlViB8pcolF+q6oTwZDOFm3Q72gxAZ1RcHqw4XKMl1ixkfzQVch/MvA
         rJhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mWeABfyO;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KvoRCY5I+iUZgQiQf9x71i3i0rg0Ldzm3DhJAaepRKw=;
        b=j0DMvBv5y00K22XCa6y/QDlRknT0ujmE5OfoGgx1XRB5u8arEI06m6xTTvkiCuLK0m
         GxagxieUfGc0HiUKNTcK9XYeV0tvTCHSyl/8eOdaZeo6jjrz39wQdKCdS3486JfWlF29
         JOWfay9xWgCLyvQWbsvcJWwfWTCrlW52pME/knXQ9w57Y1gPvYuqDBx/Yu2ZaLzMrUYc
         eaK4mlEBhEjvkZ4Qpre526uq2ba+g+33z4+KO0RkBLASHwdaHO/HqM6J/zWxoVR07G5X
         C7UVrDWE5FBS9Q6P94VnvMB7pU5MWiIlP1WS93YzmQwV1M30snfWCqFPz4FbD8rbshcT
         VYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KvoRCY5I+iUZgQiQf9x71i3i0rg0Ldzm3DhJAaepRKw=;
        b=r9z372KbahgzCyL2cegJx1JejM+kueGNUY7nsElhChwLPtk9mMq4NY9zxeb1OGlT1W
         tiMCRrw43oAa3r3KD7VMxnWt8j0SINzJo+9VK268fR2HrcHORfC8WMPnm8Wt4KOmfT/L
         cOqpvV7yiQhGDAfRV8xBVkAhzf+nA9xwliY8m9dDWV6NXG7uXJiSRR0k6hiLULaY7SPg
         38od+F9+ff7gcwl+/Kz9BDcidMwrFujCDE0FneT/gs1uCUXu/OYq552+3gEpnSm5O38h
         pId/JOPPoZsy/Oqq7/q21/uQUJrucq3s5xnGezjVjIoOASFmjo9DGlqyFulz1Fja27e1
         cQjg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUiVFCja6rW/QJ2yRaLeNx219qsKoqJ7qw7RTDWRJkl729kXqK/
	U7jCIGgUxi4bUuh92cntx3o=
X-Google-Smtp-Source: APXvYqwAWFkCzoCul/tRN7+C6WZAUHYRZbO8umAGK1E7RMHSZs8SukVQxKm+9cErJ9/FiAMnTcFTvw==
X-Received: by 2002:a81:2392:: with SMTP id j140mr21407205ywj.361.1582134755433;
        Wed, 19 Feb 2020 09:52:35 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:8012:: with SMTP id m18ls64940ybk.9.gmail; Wed, 19 Feb
 2020 09:52:35 -0800 (PST)
X-Received: by 2002:a25:3106:: with SMTP id x6mr22353508ybx.496.1582134755064;
        Wed, 19 Feb 2020 09:52:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134755; cv=none;
        d=google.com; s=arc-20160816;
        b=Iz1iFLqnwDyhf/S8QgQtmOWJTMGlEY0uhdpPKCUiHh/QC5HASARsBd+NLzWgGh5jfK
         57DTt9OvYD3MBkHehpBb3eObfhDStP8g2I9VBgMNsb0Fm3WXmeJsHexa26EVePlOjihC
         fbpoUwVUpB+rk1VI5S+OsUHf4iPt/cNE8Q+dysl195AbyyKYHW5T67KpyXaCpCCozj/R
         cPBqD3Ds9KcUIcWbJLai0xyl+/F5M/RuAYjGkoLJ/ZbNzUMnB2dmvT/bPpaPYNcK1YN5
         gFXw/z+sdOhwThFmD77oECbcvR/mKYds+d99HqoDCy4UCDGaLG5WHRNewIRLB9zvngJB
         oB0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Dpv5vCQ4bdVkF/ckiAevk1Q0QwlRloArr6NdVH8CWFs=;
        b=j8AMD2hgoI3x8iUt/6k22aq2zsa0iOlI9Vbg8/laJOyDRvGnWKena+af3sSCj5pxYY
         tA58YScp/n68bWFe8w7x0Cjd+DyBfX1jns2DrIs4tefDRrvXmmakqc9irW4mEaEeTwjA
         zyoKTUkTSUWAee8AneX57fiGErzjaW1Naz8D6oOxElFb/XgGPr5B3RTEEr+PdOF39yxI
         K24v+V/YeBUuizLFVa2He0+tua3277FLLxP2thGVmNywvHEmkqCZv0xzs3NF8c8ebHFV
         Xmq6hX82PVcj1myWIlrTvHTqkyZZhmUWv1AwFpz5T/zn+mSGnPm01XD8wLUHiMK7Sw1U
         d0Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mWeABfyO;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d78si71304ybh.3.2020.02.19.09.52.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:52:35 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6BEF824672;
	Wed, 19 Feb 2020 17:52:23 +0000 (UTC)
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
Subject: [RESEND PATCH v2 8/9] media: fsl-viu: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:06 +0100
Message-Id: <20200219175007.13627-9-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mWeABfyO;       spf=pass
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
 drivers/media/platform/fsl-viu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/fsl-viu.c b/drivers/media/platform/fsl-viu.c
index 81a8faedbba6..991d9dc82749 100644
--- a/drivers/media/platform/fsl-viu.c
+++ b/drivers/media/platform/fsl-viu.c
@@ -34,7 +34,7 @@
 /* Allow building this driver with COMPILE_TEST */
 #if !defined(CONFIG_PPC) && !defined(CONFIG_MICROBLAZE)
 #define out_be32(v, a)	iowrite32be(a, (void __iomem *)v)
-#define in_be32(a)	ioread32be((void __iomem *)a)
+#define in_be32(a)	ioread32be((const void __iomem *)a)
 #endif
 
 #define BUFFER_TIMEOUT		msecs_to_jiffies(500)  /* 0.5 seconds */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-9-krzk%40kernel.org.

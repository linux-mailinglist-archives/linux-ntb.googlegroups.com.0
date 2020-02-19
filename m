Return-Path: <linux-ntb+bncBC6JD5V23ENBBSXLWXZAKGQEFEGG45A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF0E164CC6
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:52:12 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id z26sf690866pfr.9
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:52:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134730; cv=pass;
        d=google.com; s=arc-20160816;
        b=MbkE7Hf0ErYbc1qVPsrFAxPZU2XGKBkKp1k/VG4jrjMjStkeNvBKCHtO0Umo9FS/ob
         BcyONSNs+9i4nnarBo2f6RgEXn9nrpjC5hBFKwm8tiWuh7vyd7dO1Gai+UGFTgJPxjC5
         YS7SBe6gcMaRK88urvv85VO2u5OFq9MMb7gLjRKcD+DUmPJoiLIJ52fgqAJXHarveiRN
         tesdI0loRSM954W+6arxrXRB+jW2svd77fqoi8+GiWCeWzkGuB3pszb5DCps1DdRKcRr
         qfFuMmXsygvFlQDPfKDhHgK8PywD3lJ6xu0IE85FJezGfKC5N1mk8aqpXVley0GQIer5
         RAIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=N2b3HNU0vsyGTrqCApkCDUhGH0uJhBFnrP4fPoVRwaM=;
        b=i/Tp6RQq1uh4zlgwjyUFeTmuh0Pr/RMq4l8zGSbtSXr5ir/uf5avnQ1pvyy5Yt1+wY
         /yX2cGyP7X3PbmnSPx2Yh8+xWjgIcnh5j+B2s9od/llbRqsobbHKkaxyoSCoeyXjJita
         PsRWTZ/wDXRBu4/CVLWISA4UmsxthmZzxFPMoPNbRPzn64gSGvuBmkDJIeK3jTsH2Bs+
         RwjSurlX5BQrykTMSP9qzdzCcOpIgjzQis9HZnFHn6TUbrnOokbFgYkt1HvGBZho0j91
         pVNUBIBZvuohrZAyEV4aQaZtCxokzfrjivmyQSMpEiIKfwcHxarEh9hWSWoFBI+IxT9x
         A4pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pw+9ejv7;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2b3HNU0vsyGTrqCApkCDUhGH0uJhBFnrP4fPoVRwaM=;
        b=OLtvMN+z3nmYXcj72k2SZ2JJa0ZRDWOyZMerlhSka7el2nHonWlaHovuhqc7JvMQwA
         YrmPaUKuxCNJctmMg1nP8KqSHDvzr1SfKag/0qQUSeI9aQPT3PbVO0f4TWoZRDzV4JKH
         oL1aLfAMdHQSzELjQJhA/CiKd+rqXBkidTJepJpmpzkXC9GpC4dtajPh4Zb9pBzAyazx
         pXtL/yK+auGTWjO6HlRm1ZUC16ONXk8cEK4t8GA/ElmtZa3/YTqRQuWGHc0hRlQf/maY
         u/37QAT8Jn/dbS4SV5dil/TTwRM6IPl8F93rpndVH5SrSLBO2G/nn2Zm4m6gS54CmcZr
         obaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2b3HNU0vsyGTrqCApkCDUhGH0uJhBFnrP4fPoVRwaM=;
        b=TGrqL44GSuS2KUtyAnbGvtmnZqRiKzA5ROfkZAlXg0gq67kbdAm3cfGnwywZHVhEP7
         l+Fb4R9fBAQ8A6qGbGO109cGE8uSe4xnL+poyXbzWabKhFzszy+mXTFLxjhL+2Dmv/hh
         WGX6w2lXvQ/izjNRi5g66emxNTshTaAkgGEym3P+o49c+rdq0FbKEeO3R+Lk4K2OqSe0
         TiRzVZM85x2j/+7MF72+jCiEu/SuhVrp4cVLqBitDyjyLsd8dH3RxYQKQ7mXM8JKaDbR
         /bb3ZLIgxpunTRGif0EpNtv4DtavxCom2RaVviS3V289wTaVdMBsthXX5GCkDkYf7PYC
         ifsQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVJiFulUI7YTcqhqir+ZJAkq91qWpXDaGmT5HxUp3s9QhSdwWuM
	zE96kOfDX5+78IT2aFHvKfQ=
X-Google-Smtp-Source: APXvYqxNmk/M9rZu3s5EIbQx5YwDcFhwnMvDYDcTVb0Z8iqcifkWj0k+ENamj7JktHeyeQYEAt0DRg==
X-Received: by 2002:a62:4d87:: with SMTP id a129mr27639096pfb.116.1582134730480;
        Wed, 19 Feb 2020 09:52:10 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:8547:: with SMTP id y7ls7501699pfn.10.gmail; Wed, 19 Feb
 2020 09:52:10 -0800 (PST)
X-Received: by 2002:a62:2b90:: with SMTP id r138mr28317055pfr.102.1582134730085;
        Wed, 19 Feb 2020 09:52:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134730; cv=none;
        d=google.com; s=arc-20160816;
        b=PfLgRgIEXSQX0j/hXYJpB+AOCmhywslDd9Zul8Zehe1Iv1a1Sqf8UAkxI1m1hSZrmF
         1BLWriUsjtlg5VIrAmMzWfk8WMZ+IckDQyetiOFwu9RKG1dRQj99aM67Jv/eTlFYTfJZ
         LONjzr9uC7RP80k5o8j3pBAlfBjLkJ2Lrglzh4sE6ghCrr3LbdMSifu4wR6WFkqFvBLk
         BhImWaxwbZWpb6iDE9hXAPWZRCnpDSd5MXIZoSQ0oS+4LsF8+xpjgfiBOsgTFa0Mw8gH
         WOGr4paQ1MrDIz6c94YQ+w8Dx+fco2N5c8f2T7FeLUjlWoDbnSsapK88y1Piju7nmnU0
         zMkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=CgJTeRc3rEhlDEBE4rG2ggckP6G8hCW9m6Zu9TqeojM=;
        b=Ui2oFazS5/qv1M6dy1ODi5rstRNScZopaptDUjZdcLJ5dekEK9RHVVkfl1VTq5vKOu
         XvrSxubcKDCQYeLqIUEHz1snaEd+3KeGfBEGNla+LR6YjTjd7bgC/jOBpb9EM3nsF+w0
         5hHnEKdWEPx19WVgwm7J1dlgSaB4sX2dgKjgpoOcN6yVYx0nAymgpX3SL6cP9VhbKSb3
         Vluy1FuablsieblTZMYIXPEk0ahXOfqvZL2ksI8Y53a95CouCyKv58DouPvbwdHAOXQJ
         KARbLEpbHgUz79OEUUP/y22cEHQB2Q2GDKHL4ABcW394QRH1rDCPP845Z/H99DsbIqUx
         CdSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Pw+9ejv7;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c13si28181pfi.3.2020.02.19.09.52.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:52:10 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5864A2467D;
	Wed, 19 Feb 2020 17:51:59 +0000 (UTC)
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
Subject: [RESEND PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:04 +0100
Message-Id: <20200219175007.13627-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Pw+9ejv7;       spf=pass
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
Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

---

Changes since v1:
1. Add Thomas' review.
---
 drivers/gpu/drm/mgag200/mgag200_drv.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mgag200/mgag200_drv.h b/drivers/gpu/drm/mgag200/mgag200_drv.h
index aa32aad222c2..6512b3af4fb7 100644
--- a/drivers/gpu/drm/mgag200/mgag200_drv.h
+++ b/drivers/gpu/drm/mgag200/mgag200_drv.h
@@ -34,9 +34,9 @@
 
 #define MGAG200FB_CONN_LIMIT 1
 
-#define RREG8(reg) ioread8(((void __iomem *)mdev->rmmio) + (reg))
+#define RREG8(reg) ioread8(((const void __iomem *)mdev->rmmio) + (reg))
 #define WREG8(reg, v) iowrite8(v, ((void __iomem *)mdev->rmmio) + (reg))
-#define RREG32(reg) ioread32(((void __iomem *)mdev->rmmio) + (reg))
+#define RREG32(reg) ioread32(((const void __iomem *)mdev->rmmio) + (reg))
 #define WREG32(reg, v) iowrite32(v, ((void __iomem *)mdev->rmmio) + (reg))
 
 #define ATTR_INDEX 0x1fc0
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-7-krzk%40kernel.org.

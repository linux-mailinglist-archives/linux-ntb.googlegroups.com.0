Return-Path: <linux-ntb+bncBC6JD5V23ENBBUXM3DYAKGQEUUIS2XA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D25134C91
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:06:43 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id r75sf3071395ywg.19
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:06:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578514002; cv=pass;
        d=google.com; s=arc-20160816;
        b=jnMIhKVQfBLQzogGDrqLv+iL0WUN+TfPw9IFQPUcEIrUIel3NmLSlNwWz1eHvcw9io
         XTXGkpCcXIEuBJQv4xpaXOSNgKyvNjAbJx3ulNrmyTFvbvnKV/HC+JY07h3ivaq39O7G
         ryc1M06jVmavFqNqsnexTjqrvBAWzzuczfGuZb9m76sVosalbaVSyrDU9qaNKJjzsDL0
         G8C+MzO8B55I+pLCssJZi890ejIxLt28j7KNJLEv7Qzz4/23LrDZC+1wO0wV9XpXre4y
         I95Q2Go+htVMHhq+zFzy9UmOP89wpBcwqAnSBgL6yhRr6nFR5EjJ99vglz1nxGwVnxVo
         gPhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=kCf0wz7RZd7eCKGKBsX2ZvrEstdz+19CScaZYwegAlY=;
        b=U26CbHSzhsHJqDs2iy4w3BkjH3lpy6YJOVBDnd3HL2che+X/C6Lipr8DsL0TgNIICX
         YoHJSmRiBSRec4j4hj4pvN2pcS2tbdCXDtCsCismrHA/lBho7yJ6CP19rmbYe/6nHLtl
         XBr9DcqHkGGqtu04kw+OaDGYkUzvYxQFKpR5p5LTfqls/zBHob04EyH0AWLuVFtk6HQH
         VV1mcvpND7mYrh0EnfxgKR55wZ5BPACGiTrIN8X84h0p7D7RyNXHAYF6bkOr+CS498uT
         9JYzqfQDhbf/8snU/7XQjYD10iDMarL7k291UvQCmv1j4KY+rTiGAVZt2V2WcLCarcJc
         TPNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dsuoro0q;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kCf0wz7RZd7eCKGKBsX2ZvrEstdz+19CScaZYwegAlY=;
        b=JgabVRzswgSShbyRbfCS7H3IonKrr793Xegyr/ph9n/4kpHOKKJ77EY4UECkRPSb6d
         zuhenSW2oHCpUFZhcxGOgi5KUH3IoydPCf9SouLrxzK0WWkFwEqJuOVjUUrrV1tZyPKL
         xGfcpkxjT60JyfPxQtevEJifArc6ahnrc//LworTDGmrAe5z2H+OVjs3Z7LUGGwaPX7N
         3ved3Lcoa/Di6gnY83QcjqwyLspXB+3MQ8YrFBTzhGLwQOYpy6/S8Y/QIu2MyTv1AE1v
         CcCNbkuM3uG0EDeMg85wX1SPNl3LLvMjGvg46FgDRgZIgXgDtrGAfwJGi845PefYE36y
         /VvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kCf0wz7RZd7eCKGKBsX2ZvrEstdz+19CScaZYwegAlY=;
        b=DWrmlIynLG6lkADZZfk7xXMbRqIEapaz9pc3k09kvTVqmQbMZVbyw9pLX+tRQKPIit
         UW0odhkiMC42JBfuv1lxHgZiZY4YQmGpKs/2PDIiQyYvLVj6eS0L2nPwv94LeYA3J3O7
         yAV5KKy13AdTHLnvszL3DgiyHT1c8y5lrvkzz6YszjmOL33MausTfnUSr4bWdBipXv8d
         ixRcWzb5CvRN7M2cwKLau+kMW8JZ9OHzVytp2cWBWKf+KqU9aCQpI2QKq6FgxqOdYI6N
         tQRlm79OpbvOgzMSzNYKj7dkMt38z5gIUXcIpG/aezbd65tZwGekFpOQlJt4W1M2rzkV
         liuw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV3m4h+wTeiAUAPwm/4jDhtMSqERi1dVZ7thd8/2clNkEE3E2EA
	QH5xrKqyW5PdbKwzp3aebEI=
X-Google-Smtp-Source: APXvYqyaPKDwiRtg0iEfxYVvrwP6VGv0K3zEJkE7/LhXZj1d0NQLgWfMhZDZtxhCoMBgOQnG5AD8fw==
X-Received: by 2002:a81:6742:: with SMTP id b63mr5060171ywc.205.1578514002782;
        Wed, 08 Jan 2020 12:06:42 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls650702ywg.5.gmail; Wed, 08 Jan
 2020 12:06:42 -0800 (PST)
X-Received: by 2002:a81:700f:: with SMTP id l15mr4955387ywc.227.1578514002458;
        Wed, 08 Jan 2020 12:06:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578514002; cv=none;
        d=google.com; s=arc-20160816;
        b=JTfBuMZLwOpk4IOAw9gTRhZ89w1mkwS9zwLEegVrrViad9CYlDizHxfXehk+tTi5W/
         InowUrYvM8WHE7ziymlHOD68eOFgF2DqzV0CgClfG4GfVHGjgBSKga/5LaQeweW4a0I1
         o3HCyjsRxJiQuu+TsHqMrTxz0CHZaI87COhlIJ3whw0sqv0bXh1GbWFelUu7Hog1P+iz
         9B7tG9z+O3QJioZA3ZqGHjzkEjC2wqNSw3UPA79ZnY0f0jIqgjpxIfZpWEeYmpk4AvKd
         FsGHM1ucyA/VqF8jIz/dmPUBD2AR+SeveFiGPZ+RieoyivvaVoDOalE0kOnZnz8QiY1C
         uCyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=rwPjKd+yYLWkvTvpSMNq9IMefu19WXJ3q+nJyk7FIZY=;
        b=qcEJkvxaqsK82LmmcnJc/yHzVmP8e7KscVFxoGj+ty9De1Ryq5XcEbb6k3GCBPci3v
         /RJTbW+GIk0svGesrtftM/79EFyQNg4FkCTXGrDrfkS0bN8b2FSRhluLyIFwFDQbNQoT
         Z9Pp8KMqdH5KQlVsK3okJgO1k06HUarbDOwqCnTf59XTLHtPDy9pfTJT2B9DcKdu0wYv
         zm+vIPf38D9weSH74JZ3ILoexPwIlyZThjBW8K4RNyXxGx4E5uigY1qUzW1cxhE28DSx
         tD64muUfxH0YF77j2mINq1JHbPNf3ATGToMftEw6FtmVMtJ5Kc3LY5xX/9OqnwAvQsVv
         wUcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dsuoro0q;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si208321ywa.4.2020.01.08.12.06.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:06:42 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 015B12073A;
	Wed,  8 Jan 2020 20:06:32 +0000 (UTC)
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
Subject: [PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:25 +0100
Message-Id: <20200108200528.4614-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Dsuoro0q;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-7-krzk%40kernel.org.

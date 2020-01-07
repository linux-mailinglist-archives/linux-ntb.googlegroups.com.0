Return-Path: <linux-ntb+bncBC6JD5V23ENBBW7P2LYAKGQENKWOPGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F27E132BE4
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:54:53 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id x199sf10574pfc.10
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:54:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416091; cv=pass;
        d=google.com; s=arc-20160816;
        b=B8QXgFnHsJ7xutFUeDGPRTYEHSa9NDT1XG/ut7qUSpslYC/Mrm3WNyt+c9ReOnCthB
         nBbg+dBQZ84ZRiIQEES6I7DYhYI/3LvswxjwvD7TOrkcAWOYmc2Bq1WfHGE5HLqlWND6
         ++A1j7X+9gFHcNgAn820Eft59lgGInh+0Xge7It/zTp6PScyKCjuFaPVHPiJZfw4uP/+
         uY0MEyaWnWQoWAwiRN9VMY5QHyfu4RyfucJEv247mAztkRyVZPB6c9lTWND+ls9qy0zo
         E/mckipQhSStaa9gqfMNeiwCtKGRruXdh1DxMnKBoFZYBnM7b1pzEEIYj430qH54QFMe
         x3Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=iqS39ile7FFBd05y53O80Qn+NngiiMzSG42095z1YdQ=;
        b=IJjL2ONsvpy2gBCZGIJOHRmS5u9dW/GFKVzVmMNB/3EY4YGgzCRhb6d2MwSit57tfg
         VQMBFFtJzSPWsriVSHrmhbJmJAO84CRUhx9neFmycUsHJvli0wDRf4bmjooruJ0YokYj
         /CKbPXymXkpefYGPvlKrdQzHRtzmP0swPt1PsLGIr0YJ0gL7R+THSUDQZxW3zzqJfmfN
         kHQbHuc6W0+68vjAIxRSqSJDkeRsu3USt+VTvHpeRJ9t4zjj5o674PFSExG87P1GA+Xr
         +IpYHy2hTFHBDwgNkw70zRFvBtCi3zhCa/7XSZlTKCmSDSdzCBiDcXBZm9YAcU0KZX6P
         YBEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ktJ602nr;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iqS39ile7FFBd05y53O80Qn+NngiiMzSG42095z1YdQ=;
        b=OKrJz7gzqvY9pa+uNwkwobFOH+Ci0vJqahkZKEAfHexDKiEjd4sfwHMfbvr84u+Wvm
         LgqBiLOC7g7QFKjumy64J4BX40bEQIQNkFDnVwH3ZBQlYaeX1VMI9qTX+oELo0mBGRp6
         Ze7MH8IMehSnU+7Vw08f7VosBoHeVjY07S1U+t/iD/pQaCY71fjlBTnNH5Qelw+1nhBX
         k2pU2SukdJ/yKXRx0UJ17CQN6o48Coo81FG5j88/OeWs4ZS0fYPjVfYvQtMt1Waj0bKD
         WKIQyCEFRrgRmMD4WKJcjKqF0suV1F+W8uTrMlaidxVIWtr85+F/BgJG4iFJjbLzMYuf
         I1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iqS39ile7FFBd05y53O80Qn+NngiiMzSG42095z1YdQ=;
        b=oaeqdHfUQFz3vqIDQFPPWKcO3+cBYN/XYSuKU76LUK6PhVFmd9CqRSn24PRg5EEOmt
         NYRU1sYHWE55tQvqYyLta1/xBm2hPbbsDfF0St7isAihy16EvtHk1jGa5AeI6ALtUBGY
         W+tL/fWqfRlExouMjMDF7mKVtKrmXvaQFK8qbtUixfplfmtcsM7WicMNamv5AblPHcd1
         j9+ufw/wpppj0IOoOpYrtegmiYcCO+1xlGshtqpupzxXQpBlJQCuy19Ps3FsE1lH3EzX
         iILqQj9CkTdsVq0sJ6H+0Bz5hYuxAUMTpMr9+qHPb3/jFQ8/IBj3T+8Xpo/YfuFP8vaR
         DaUQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXP8M+HGoApxr3GzFj+MiT75Su8UN5Y8h7JfM5j9LpBXEw+16y8
	mAR6s0IVPqsV1Kz6TC1glvc=
X-Google-Smtp-Source: APXvYqxuGZzz6Rd16bLFP16uh4yu8uKaiKMF4Oi/n9yNhBwnZRS1ACd3egTAOFbEsEuQaXfku0Rmrw==
X-Received: by 2002:a65:68ca:: with SMTP id k10mr407531pgt.222.1578416091027;
        Tue, 07 Jan 2020 08:54:51 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:f8d:: with SMTP id 13ls40075pjz.0.gmail; Tue, 07 Jan
 2020 08:54:50 -0800 (PST)
X-Received: by 2002:a17:90a:ac0e:: with SMTP id o14mr720120pjq.11.1578416090726;
        Tue, 07 Jan 2020 08:54:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416090; cv=none;
        d=google.com; s=arc-20160816;
        b=NcnkKTBph0OPupsdXRiku5a276UmEMqxV2ArOhpHL5WOVr8t1ubRSKnYVQFdmr6fvM
         r8f9HNSRdvaUETUjXqGCUsx4xY9q2ssGzvlJd5Xt4Hw/1IAqcbbAeqdZFaeuqiRUmhlT
         aZyDkT7hDantWtHJTcp6EvVoSOVQ4dmOsyWTYTq2N4mriPTX7kfraeA8wnggknkCEMdX
         LsNu/6SXPTenFCkpWdguxmx7dm8Wt7WEzgv4SbEKh2pi6xgj2m+CjYKf74YxnPHCKwf2
         TBF6mpC1UGQAojdvIBn2d2gr3GQVTAErJICm0edo5c15Vmoyl7iIry6r0quA80AiyxxY
         zUkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=guxv9hDvyIeha15v6Qe3Q/GM65cF265x81HcMHsXhpc=;
        b=YAhXDncLSjN/mvyItOezRcWhB4VfD2DXsHIaS8x/jyqWiGDxXOUz+WUWlzNVhLcwRr
         hYUNdvZyfTM0/BQjeHuvSAvloJPpq2NdQ77W5FoszUVWWfNLTjT8S3ZSD9Oo/UVEuEm2
         En4K6QyqehA6PVYF8KqyuBgmkqcs0dk2xvlTCFYHyp37nZ13KqxUfN3yjo+0Bl0POlfr
         mK7ty8Qh/HFryzFP9PLZ3ck/JS57hKG1/hnxGE6uEzAWPNAr7wqi7oV9iuvSHyzNEIpP
         e7NiCAILlNWPUu+AZdWadV+b6HB75/CpqD9ZFEK+hGaVPM/SIUNP+qStfgwW177HlGC8
         TaLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ktJ602nr;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s12si19682pjo.0.2020.01.07.08.54.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:54:50 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 95E1224677;
	Tue,  7 Jan 2020 16:54:41 +0000 (UTC)
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
Subject: [RFT 07/13] drm/mgag200: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:06 +0100
Message-Id: <1578415992-24054-10-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ktJ602nr;       spf=pass
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
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-10-git-send-email-krzk%40kernel.org.

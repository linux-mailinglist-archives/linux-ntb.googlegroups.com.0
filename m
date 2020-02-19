Return-Path: <linux-ntb+bncBC6JD5V23ENBBV7LWXZAKGQELZXH67Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8C3164CDD
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:52:24 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id bg1sf588604plb.3
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:52:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134743; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZrnyaWw/5pL78xolP2ivFlKQNbjGagGvqLahTuVMNsMZj0tEHpLSXk2y+HQCEEgpne
         RHkl7CrHLxJoKQOq0TqAW6N9/cqD30gBdCIDndxdVGEc8hm01x3ZEKJ9oG2JpBFG628d
         YMTmjXZYv5+lgr9ifXIFgrvQJTRNc0ABRzeKTu/sdjjMJ6GtCBXXlqjdnbvcUmC1KitI
         AI2cr42R3iFJvHBkMvrM2q5as/IGTmW4j1c022i2e47ucIYe4Uk7GxaJBVUipfMw3u05
         vy/aQtf/iBjd5s/x+OnQKJ3hXwYmupUNQpQ745iYjThty2zqkfzrcONY/iXgTlFzInio
         2OKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=QNJdZbnvbrgcZZVm+SSZmDsAOM/dh1z9qItLImaLfsY=;
        b=rP6RPLOaWocXyT7gzB628WIICeVEoSLsX5p6cvhZKer0Qw1mrWPcBJ9Y7SX3aD9jKp
         rA7d+1fVnYH+L/JPY5yXOpbeSvH121ID/Qs8ezy/nLaWffu3VQFeM6qNi9rZk7W91Bpa
         Q/Ri3f+5LDEZiEc/muLy4GRZJ2xuCNRWs0ihas8lMwfYzAguCcRHmDSIYWeOlu8htgVU
         0PD0Mo1mtsvIDP940csr+Yn0l/v3DJ/CsXeG6aq9wwEfBQC2qxFh3IwsKrwCgIzOGIp3
         Dho0CRiAr14+g+PNM9/JZSELmcRZ+t+7eLDGlQnQfpdvd5L3n8Z6+r4d59sEbA/zzAEs
         FkZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nm1WAez1;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNJdZbnvbrgcZZVm+SSZmDsAOM/dh1z9qItLImaLfsY=;
        b=CpY7x3GLTqIy2LfvcDI0AzNRBH1dojkCgYKT17pihliB+1N7n7Koh97t28Zz3iAT4P
         e5ZQpiQVeQOb4YYe88WJAYlrdyEWvcGV1RCqRL+mG3gtnoFfHEJwT7QXAIgnFzI/EYt3
         oE2dCFWAgJyoH3suLoJ9bcFobBozcYdtKBCZm3Mh7TDYdPHhkXkPh8L7YuFDBhmm6tnU
         oIi/l6xaF0eM5ecyRHtiQJ005LqgYucqxP6PaLNn7gjhOOL6sAaIHFZaxEJam680YCvV
         vca8gn7One+iixrixc39MIoDO7gRH8deKmnjo7VLbGZKMcFNm/I5UAvrGlmRMBlu1djc
         4EOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNJdZbnvbrgcZZVm+SSZmDsAOM/dh1z9qItLImaLfsY=;
        b=RLmBSKotJlyhW1n+Ip7rDq0b9HKWW5yKCwraeLkrOf3NFl1SAyxVJgAsOKewSMWQMN
         z4T8qevEsjnfIC/E/p+0uZOF2QaHeuQ94yXyhL8qkxgV1KLoN98zvwDrGqcVRMpiamLJ
         2f15iKmEvDLNecVBQDn3ag0MkGpQHCUkwL0oqKXsEulyTmVoXnaHJ52B2yhYfhG4wGhD
         EB7RRGQFFbkL9KnPJV7BdkqBScXaP/yeXc86D6y+04BgyYFjc6SnMPax+YIf4xjHhLK+
         fueAKG3PCg5GylUMhCFj8CL67oxXJvd3VQzSGs5MCgfMb+7CQCHt/6QyIJXC318mPLmo
         6Drg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUzOhS2KJ4xUvmx17D/6B8uSbD75omOV/+eJpixqDQR03aSmk9U
	BxcPB9LSvJQ/UbfGDqw7cHA=
X-Google-Smtp-Source: APXvYqxddPrCrjZPqlmNaQGdh1EOSZWe6crGolOiAfYiGn1e0hzVZV2C2+QjpYYvEZQMQFk1RXmvjQ==
X-Received: by 2002:a17:902:708b:: with SMTP id z11mr27634470plk.121.1582134743465;
        Wed, 19 Feb 2020 09:52:23 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9f95:: with SMTP id g21ls7597277plq.5.gmail; Wed, 19
 Feb 2020 09:52:23 -0800 (PST)
X-Received: by 2002:a17:902:aa81:: with SMTP id d1mr28246621plr.16.1582134743133;
        Wed, 19 Feb 2020 09:52:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134743; cv=none;
        d=google.com; s=arc-20160816;
        b=X7pSDFEoGRWkyzYha/uoMDl0IjcXX+YN5WgRJn2xnNRRO8gcLALurhtkJO2pFUi4M7
         flVgwaZjpuBIoj4wS3rn7Haz9wYqot593yNrx9+vq3wL7qrfJ5a5xRgoiF/MTt9MeABv
         WYOezho6kRrM4eunhff14xPSVPdX1a2u7mrgjz0WylS/D7FFerDQSKdUHKhXM+7f5Lz7
         vQcK8nklNj/iS1x2xVogZG/qRNiZMAb7pIHP3cGGY4skT+SaHowLhzy2Gni8yoNlx6k7
         66tDf21n+NBOwZZNF0oBXQ3sYl/FGJUCEIvV0LEjYVDFjHXNJCtK5Xmxz+eNZaftnkzK
         qR7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dsiatkf/gxUTC8RjTUxQqDNcBbcd/bTAdI7NwaJ1O0s=;
        b=Rhjt7B2caUHzvU1PCM8n4peGw/gZJBe7L+KVu0zUyVqoeEQ/QIqbhItNJsw3kg+OOG
         1s0yfx8Xbju2m7M4P+VxLgCK6TJD02FVgZgBAXKSCelTso3Gq/YrcqgC7WSWC0iqfpMT
         J4JgRvLLJMyGByO8XisMmVWAy9GnG4vWQ7seMPAleEC6JCb6tvjEkYks2GGSLg+x2rYe
         djQlvxJqqZRDzj0Gfd6RVHslKIvwfb4zv9Ae1ZoAgYCi4GBLapoJxg8/y+a9A/Ax6dMx
         OYWeJP0QpCZiAl5zG+QJjFXbxqGwI2BtviZYFKqexJIsPkRc8QY+SvaItaSMOao6esJw
         NoOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nm1WAez1;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m11si230142pjb.0.2020.02.19.09.52.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:52:23 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9ECE124671;
	Wed, 19 Feb 2020 17:52:10 +0000 (UTC)
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
Subject: [RESEND PATCH v2 7/9] drm/nouveau: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:05 +0100
Message-Id: <20200219175007.13627-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nm1WAez1;       spf=pass
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
 drivers/gpu/drm/nouveau/nouveau_bo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
index 1b62ccc57aef..d95bdd65dbca 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.c
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
@@ -613,7 +613,7 @@ nouveau_bo_rd32(struct nouveau_bo *nvbo, unsigned index)
 	mem += index;
 
 	if (is_iomem)
-		return ioread32_native((void __force __iomem *)mem);
+		return ioread32_native((const void __force __iomem *)mem);
 	else
 		return *mem;
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-8-krzk%40kernel.org.

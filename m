Return-Path: <linux-ntb+bncBC6JD5V23ENBBY7P2LYAKGQEYRYOMRI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9712A132BE8
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:55:00 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id e15sf218945ioh.15
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:55:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416099; cv=pass;
        d=google.com; s=arc-20160816;
        b=fZWPXxJd4NE7JiOsvHJdF0p4ZagL2itAP0JSVRL92vxxQcaZbS/fSLOHoGSaia92UU
         a/nzW8qhaFjWTsGNAJ67VZfZlgmLSyvVF7Dc/gSBgi2k+hPBwFiZciYWcGWrm2kqLS5m
         0vIZMb/gTSmeKkXGwD6cS61iLKHL2b4sd89ujRfRQn2QE3ePqhdV3yW2Uy38I72Yc4cy
         5m8DOgQMSTT7+D6Go03h0ukbneYhr0M1SNMtvo9QNWX4tZmsmaIA/jFlwuZmtr3qMPvN
         2Cgwk5H8e0qvZY5jRbUM5NjEQYf54YH1bcHuqgtVVHkNV4+5ukt5aq3e/DbxYo/OhIC1
         NNeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=f1bvAN4fEqmGBxjkan2EsB+aU+OcraN2WeN5GdPJYR4=;
        b=V4nsANBiA8BJks2ivRETOvoMUd01xuOuAaUdlwGarEAAiXUQj8TqRs+A7iUWjHrqvP
         MVvor4GNGoYEkXzTt3SYnh+j+oLuKFGMeWUZyx0GFMKcUs8Ryr2wEUjJ7Hmt/f9e93wO
         hqvAJz2GvNg8Xy6+C6zcnThK80563OpPS3X+wvsnwkvXF4IGoSbrxR8iKt5ne4pcSHjo
         uou+f9/8f/Z6B8qgJoeSsd69fNCp3LD90ZKbarxoy4m7e5vQuXp0wBeuOVVTUxQ4yWuI
         BmVWTUIkcS9uzfIZTQTCeQkORd2JvkcKzMFM9cl0L9rLTQcB/lF73UuTfMlZV2IZP9l2
         GQYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PcOSHuIz;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f1bvAN4fEqmGBxjkan2EsB+aU+OcraN2WeN5GdPJYR4=;
        b=EcIZhf4jgWqKq0D9NkgHeEHpOO3BFd7bNfIs/tjHbfKgIxkLsmADgNDOvW2rXUDDxr
         gIuHXZLIKeAcW0v/+T4KRWq9tTgLc5V4+rcZ07OSWV4aldmCPKceor4Va0rBlODJHAgr
         5RncTsCw+Phmm+e1xjHRd/3nhen2YPU/ZJkM1rEA4teahRmaZLX435zDtk8mIwssAsDh
         SMreggRrgIy8GYpHXPmrcYJDYSqHnvZ+20+p8lRugAjjx8YejoazWbX+xoPbsRaLn7qR
         atM5MimzMOMcWlSxSo0Qb6eVAxh0YygcTVkZO2Fn+UREmrcaLt62RM6/WA8UjaY1iH0w
         U8hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f1bvAN4fEqmGBxjkan2EsB+aU+OcraN2WeN5GdPJYR4=;
        b=KxMu0iTcoOe3iQrProKHt9JVFjgoy4l66fXSDkcr8o4XAFbyQk+01ZvJ//BXm4yWgS
         0qXxeGsMB11tOw9fM6XRZ8Ey2c4oOBzwGwVL78v0mcp4XjD7I60Npj/5uPGNIbD80dr8
         BMC8OoXtOgNT3LRfYuRoO/64T26kBasjdSP6dHbGqX1JtaYaUaBR+xUgOUrySn2k7ZuQ
         acEcYvTXpMDWE93ttqmtV2yq/j+U8J0cI/rzBl9QdV6WtnmA2b2uXWFExnZ6Bhf0mwuv
         bCwtUaS2PgnUR0vmcodkBruKOj7RfM9zKWD2ES6Zce01d8EgcjrwR47KSzt9C6vwoiKJ
         4+Zw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV6UxjaOSo7c0wck48g5e5B//hHtQ8WoOl5022JdU2hPku6wKAQ
	4Ig6O460GI6BP29ngw9RzR8=
X-Google-Smtp-Source: APXvYqwnaXt9yceyxZ8ilMCbCUrYW7hdTKR6Mj1o8XRnz+HxIsmJDtfMI5q6NXKu7Oa4aC3vP87f8Q==
X-Received: by 2002:a6b:f404:: with SMTP id i4mr302009iog.175.1578416099314;
        Tue, 07 Jan 2020 08:54:59 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:7a08:: with SMTP id h8ls6628iom.4.gmail; Tue, 07 Jan
 2020 08:54:59 -0800 (PST)
X-Received: by 2002:a5d:9285:: with SMTP id s5mr59958622iom.85.1578416099019;
        Tue, 07 Jan 2020 08:54:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416099; cv=none;
        d=google.com; s=arc-20160816;
        b=uJph+k5vFqpN+u8rsMu5keblPK1Ru81SnfrrVMvnc+lBvqEPIT5+PnK/yRgmp2tDmc
         21YugyclOlQLP0i6LOXD8EBS3eNMAsa/K6pa5XSGdkVSNhOVPNBid6hsqkgH9sv3iBJX
         waZpI9mq+JaY95lDAgbCk0wwTUsJBfOscxzycRPxPgudXBEcafwRrx2DBvQBQWj12cs1
         op1J8S5O8dPFPmnB9dvX5HsFghnMdPuLLiNG5b3C4AoE/QgvJc8UFxOvAGEt947UynP6
         PFeX+nCwdr1lXWNMpALv0fg3rKHuBlnVzfRziKa0xor92x+RuDN8ujJouilD3S747JEh
         0Ytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=t1lotGA0d6qnSuKDqg893YxSWiK51TDfYwTR9HjRYpk=;
        b=JnWSs8Pi1OLLgDMgMdFbC52FVcehcG8zBOyt6D8DCMddcHu87CnLYVbby/Uf+eHyZ1
         WfifCmgoriUKJS3spVMZ2lyCSuDX1ESbUHRzJhUpvIQRzfdpwZwYWf8DP+5wpSi6tsZS
         HM6hvWeAOxNlm0gJapFPPVtxpFtsttdL9ngvoX4t0QXSQlEynTbEHQGKzOTLdm11TDnQ
         S5cEv9nw2pGyI3XHrE81rG9d6aYOWAOju+W4VXWv1jz1MGW+dqXJfoRjOK1IgoDpn3ru
         My8GWead0w+PAPnG9hYov8BCM8+4kjX9vdmPBOmgrP5TpHhFk+azKe44KI7zSdZlRCGu
         LXmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PcOSHuIz;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g12si10757iok.4.2020.01.07.08.54.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:54:59 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DC2332073D;
	Tue,  7 Jan 2020 16:54:50 +0000 (UTC)
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
Subject: [RFT 08/13] drm/nouveau: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:07 +0100
Message-Id: <1578415992-24054-11-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PcOSHuIz;       spf=pass
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
index f8015e0318d7..5120d062c2df 100644
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
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-11-git-send-email-krzk%40kernel.org.

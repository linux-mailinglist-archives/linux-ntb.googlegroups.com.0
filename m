Return-Path: <linux-ntb+bncBC6JD5V23ENBBZHM3DYAKGQEGU4MU2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E65134CAD
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:07:01 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id o1sf3127628ywl.1
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:07:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578514021; cv=pass;
        d=google.com; s=arc-20160816;
        b=B5YuItEsSpE4io9kgHcVmb63IRLt7yt3IUQ+CeVqnwxm+HReeH1Jfr+HXNXtFBrZJJ
         6qz77KHCycpv5YAI8XnH9Gja8gkVJHZu4P4SUK92p368yqing6cw6bqgPtbakGRI5JXk
         pPgUwbvnNUH7w7fSzoyqsSN9lMCH/wYSXtwSqpYPeb4jZuTQ0pp5VslQ3a1goatRmeLH
         9Eqx1Kal7lOjsRWuRlnU+/Vklj8aYAZyb/fZAuCUyDIFAs7WA46+3DPo9AHH9W1JXEp2
         xKVSGc6WbYBkwlxcNqNr38Pgd7HSnGX5j+xmPsMV0nsqmwv8gg0grwZ078jrxWW806Gv
         4avg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=yVvxkenDYrnaYIm1hB2cZemw2Y5VObX8vpvEipJRwTQ=;
        b=axNnzCrfF7nKho84MlevPVrI4uQe6rPyHvxHcGmbXFJSyXZjIK90G98FsDEqqqCGyH
         5gjo8CQKBUwrnwDKIA1prvZZWZlL+8ucz7gymrCsfbkmttHkF7CIg5P+2TWt+okO/jUY
         83reUKI8SbMMRowc3uFv/6ELmXXHnkE+cuEtC/yytIU1LP3k8MXefHGz+BdW0oBOab9V
         BV1628as66bdde5gpbvS3VZMyUWKQduUd7pZT3B231QJfZIvqfkQqxnfRG3KXN+OD4eo
         WTyCzsWv00ELfqcZnvB4jEx9uyX2aboaNlxoY86tftGyKJghaxLREinYFv6DUEiQ02oM
         12NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z7kr39OM;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yVvxkenDYrnaYIm1hB2cZemw2Y5VObX8vpvEipJRwTQ=;
        b=cdHtH7V47Gr6I53r6P/6i5/ckt3UXX655rX48c/JmZIz486oHEceJ9sGcBFMdrzHsT
         OuSv7oUrEDNfYJEnhB+2t3qCzl/0BZJCCAtbFoimCWr+F2MjtRliAXc3cEbRy6TMRgHb
         C9lI+pjGsgfl76usbI5NeeO787OlDDbgZWt3kYY7oTKXeCnWM3XlITPiUlSmOpsDO3o3
         eqkNHT+jVY3h4Ao/3qBnefjMrNVsMOO/Av1Qqbj+QY3Z41wJewVP+1ByyzhX3pkHZyCk
         pJgxpAcN70KHERQbTwzx6AuPvECQPVjaixVFhUihZ90V8eBoJ6ZRtzgKa9U8Ecv4mY47
         7Wkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yVvxkenDYrnaYIm1hB2cZemw2Y5VObX8vpvEipJRwTQ=;
        b=sSWxWRnN2gmA+FWeuoOTG5Y9kNjSkemvYm+hB1I6It+E5phn1YwzwDwdxC8nTs2unY
         GWYLnhODc9sFt1j1UcSCzfrIq+8egHh3TG57+dMUhftnE0EDpNCwIMJA/cqWHM3KZtBx
         ov0/VEzXzXSbaAk5MqZ/ADRUKIvShdZ4FAgHwpfzmrlt2I/HC/1DI0jojYCO9RLoAl/Q
         mFn3BBjL/QIratmbKCigOdSpihK+nX3n0LmniN6XZefWWHPcGxvXzjT6i7vtc0HgFvfO
         ZrQuUDHysvd1/Xu5ijjBy/2S24huarmFVvOvBxKPbgb6wIph3VLT1W4sxPTxqMfXB3ne
         8MXQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXwF+Azcju7K7BGOrW6PSUvB9q+Gx8zBZYksAqZKlPV9gpJ++yC
	eV6SvuYJRrK/SI1fkfb709s=
X-Google-Smtp-Source: APXvYqxjZbPQBRaUUSE6ox/29mznBOi0rpT5FY9BqfOkifkUnAlj3PG1S8TCMLoJEsxzid1UPv5Byw==
X-Received: by 2002:a25:abed:: with SMTP id v100mr5171390ybi.506.1578514020873;
        Wed, 08 Jan 2020 12:07:00 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:aad0:: with SMTP id t74ls680872ybi.12.gmail; Wed, 08 Jan
 2020 12:07:00 -0800 (PST)
X-Received: by 2002:a25:848a:: with SMTP id v10mr3441992ybk.313.1578514020612;
        Wed, 08 Jan 2020 12:07:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578514020; cv=none;
        d=google.com; s=arc-20160816;
        b=SXj5k3FpEPFnF7AFWqkbUnYa8WVArnBvU0QsS7BDr41ayiQ3kluq9oM7DdUMnU+0FE
         lWhU2WherX7JiP3wpJdBePkbTGblmywJSZx51iPfkVPDIZ9SbxlTYCtJrmkDjLAZc42o
         DI63jlc6UU2srfhaQcSK/+VUm6jHdXWkITXJDEzA9X9mr0LVsF9n9IZV+PX6KM1skZnM
         MuMwHsEEsLnwNgm7LtQilrlZ6EHRixLNSr6hQKiy5XFM/x+N/rqYCQASIySCGffmS0mT
         5X+RrBTH8TM6It5n9OFxiBXNEbv/RgXoRcgwhUekfuVr1RtztXCYT5XWpWrcVE/e1ovQ
         h9rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=Dpv5vCQ4bdVkF/ckiAevk1Q0QwlRloArr6NdVH8CWFs=;
        b=wKCfBxjUT0yEqXVE0yZ8a54vDWEYhPBRx8K2QBRQ2BNPmCzKvCPemNo0IMsP0FV6WA
         3/sG5QbVzWTpbWZnqHHTrZeqEDKomflYFWrhHudamvafbvTiefCYeOWqEyLtqRZd7TB0
         owEXpRlBjb9Oq2eHt/tnh9MFXI2Ag0PEuss4/zYNkAntwz7WyGBwYSSIeXRXY1nwvR2G
         PCRunQYYg/GcjvZ3rAXl9gGvBOeUCrU5/vEXEyI3Y7+qPZo5Gmf83MCSinNyel2xUxbn
         E0uW3ZOKtaA7VzDJSkdP5WBTfuy4FGJ2enNzdZHqI64OfdfsnfB0f4aQXLadSESMm4bm
         /wUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z7kr39OM;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z5si245817ywg.5.2020.01.08.12.07.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:07:00 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 20BA520643;
	Wed,  8 Jan 2020 20:06:50 +0000 (UTC)
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
Subject: [PATCH v2 8/9] media: fsl-viu: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:27 +0100
Message-Id: <20200108200528.4614-9-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Z7kr39OM;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-9-krzk%40kernel.org.

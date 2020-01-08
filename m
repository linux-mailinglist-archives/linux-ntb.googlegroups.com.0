Return-Path: <linux-ntb+bncBC6JD5V23ENBBW7M3DYAKGQEKOAXU3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id B51B1134C9D
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:06:52 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id o1sf3127147ywl.1
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:06:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578514011; cv=pass;
        d=google.com; s=arc-20160816;
        b=nvD+sL0f77E29sZvv+B8kPDXonjeJMY0iAFOWDNoz/t8cjQxDYW1I+CixHmaqnhShP
         zH2djV2ALlVMEzpzpUyiUHyiv+K9JZUwhEdFVzm439WzB/vfpymUOucplsOkFZUmlN9q
         2BfRe8ZmyLcjwREVFAIUsg3Um5cHc5Fjb27tHaDM7eaJ+FWzPq/VSI3lg0boy0lfqoCV
         JeQbQ5g3xonO+GnLOluiYuZQCtWYJ52+zhfr/w8KxySz9+bl7fCOG+qwuZ0lrg0oRMvn
         fn6x6Uin+ej1ePaGnvPc67ksCxuTnTe42wTbgWafkknAjTmP+KoQaRsUJYjxKttBpidr
         1ajA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=L4JZg5ZMg0cL2j4rV10jbR4vzeaCohod2mo4PeN1cw0=;
        b=0HUPmTO458+r02nKCKYiyOVrDUxZZJ7hyk2Ewid0U7LAKmfa7NcvmzCCQZU12AJ3fD
         x6YpAZKRVN3QMscVSpAQwrnfSDsfA1YQXVj+Y5FFkjDi/kIAv5k4lEEwgVYt293qw7a6
         cbAHPKkyO/2tgnWE1/GGkaB6v8hM8ZtiPI4BNXmdyijJ84uxVgCuQ5o4oJeQM7HFXc5U
         p59AZumX/i3lEJnYmeUWIvcjEqPIt8/UDMNM64Fr6YBJPHQxuYrcuBVR896ltyVYkVP0
         Jc1wEREBzugGhIW75SGk62rF43sQt55PEqhr2hVIGuG5IqFmNsMDlwjAK9cxHNj8rcSS
         QR+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L0JByfH8;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L4JZg5ZMg0cL2j4rV10jbR4vzeaCohod2mo4PeN1cw0=;
        b=i6WhMPSACcE0YNjOYuZhE0xPWBAdanfHlgFeCUGgi+iaxRo1btYkenyk9rxJpiqK/1
         oRu0kV+nhY9AnPUbKjjxzV6EMRzSs1bYqyQpXy2apSB+DQ+COJl4fDSPS292rqiFPcOT
         t+T0ndxMOsGU5wn6dYJoHS8jh9qXjvSZPhBcJ89dM0/7ljRI80/B46/mIuCWYw42jdya
         MdN5FAROJLvrkG7VrnGtEoPkb6L5H7NIk6KQHcKIdWmusnTNErgkJWcJXrcXfoq4pHwy
         aEVLP9CSwvptIYpyQfKoeXcPEXnAnr/Jv/OHt7bYMKcgfFkIV7UetOwMrBZdivAwWDTn
         zuog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L4JZg5ZMg0cL2j4rV10jbR4vzeaCohod2mo4PeN1cw0=;
        b=rnwpiHNLI0R+K4gJ6zGVzsYk3RyqHQJxpYxniJPMFwODpAeZHzcojjOSbTtbLfbZ6I
         SWEElJ3g0dvvfwfgRKI8Aw5275XWD87PQ7xhVL6RM+yPR4gMkzt1rqL3EYEoht9KKIWD
         nF+jcNwoD1CIhEXuf9fxXg57x3mba//m8nzGknhZZFbT4Mv196/WGeLl5SXCnVfpczVg
         iR2rDros8zDLO/6LytjeMUpRwKCXm7f/+rwV/KIEDPs80GJiVENlLpQmrn/QRvM+oHRV
         tYTJrNQw1tlbvE0oKxBi0p5Roq0o8OCcrwVFJENs1bcRsIZYjlUINnjUOLqxEOe0UAmD
         qwFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUM7L7J2aNmxkFUuBV8BWjFVIW87F+pC/r4MXD7bGY8AAjuVQz2
	sMPcw0M1Bv8euUdw5WizcdI=
X-Google-Smtp-Source: APXvYqwnZk4f7VGpZevTh4MlP2XBClf7Ii/Sg6YyFsdnSl6Wn0maiEAdONhFe5TWp1wZXtqUiFj8ag==
X-Received: by 2002:a0d:d8c2:: with SMTP id a185mr4716373ywe.337.1578514011752;
        Wed, 08 Jan 2020 12:06:51 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:2f58:: with SMTP id v85ls648211ywv.11.gmail; Wed, 08 Jan
 2020 12:06:51 -0800 (PST)
X-Received: by 2002:a81:a151:: with SMTP id y78mr4873242ywg.317.1578514011473;
        Wed, 08 Jan 2020 12:06:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578514011; cv=none;
        d=google.com; s=arc-20160816;
        b=bMsIQt7UHKXQ6xw3VxG60ghQqDu6bJN8P6EE6sMYSUKpxWkILF8UT4HxumzdtSXPL5
         XLCpRjn7YyxzknMHwiXEAVJKndDbaAqx8mN1vVj4syc6XktPR4FI/1vaqhtzWSXHPgpd
         YJ/iT/99VBQDYFm2ExkIXooRBzNqH1v0qmBf5kNji0L+5VNkVEGd+ihuIfplTBi2Y0uX
         MTjmZefpeNt3UHYYoI4F01c3ubQsAoOc/74C8GFz9n5OyIJlcPjPRg6hJHw25dXCbCSM
         swLTKDtaH6EuMPEJVdkDciCt9zWcXP3iO3tRF6sgyicL9QeSjT/9o5pF51Oyis6N0SK5
         V73g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=lR2E7Y1eB8001cSqVguinv+ud3dPhMqymF0DBRXiNsE=;
        b=qcnqrQ+k80TDTut3c+CD4YqJlKbqOH1oY6fUig5+t60D2ss2AJNTmpSuTGLvJNssYA
         BmxxAlXImuEi+6FVaAtv2xswQS+LdqEmo+ezzhV8uXdg4UoDjIw2LTkKvSWnI1krUl6I
         QtHx3v5XmEFHlY9wZ6KlvnTGFIW4ekye8/ldcNVrF7/CzIsRibrqxkLLqMTsLTz8RRff
         Mrov7CYZ0EP3sTMcTX1Mzu+41qOE/7USFi0Nh//GynB/dcpGKt5uEous3I9fP1M0+04G
         bPan5n0BbQMV7kl8yoCwc4vHEE5mNu4eDET++EocOtt7D0xWnenhoVAk4tp+LOV5YBsA
         jmEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L0JByfH8;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si208352ywa.4.2020.01.08.12.06.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:06:51 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 186642084D;
	Wed,  8 Jan 2020 20:06:41 +0000 (UTC)
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
Subject: [PATCH v2 7/9] drm/nouveau: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:26 +0100
Message-Id: <20200108200528.4614-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=L0JByfH8;       spf=pass
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
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-8-krzk%40kernel.org.

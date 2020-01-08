Return-Path: <linux-ntb+bncBC6JD5V23ENBBN7M3DYAKGQEM4JDXAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1969F134C71
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:06:17 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id g28sf2654055qkl.6
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:06:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578513975; cv=pass;
        d=google.com; s=arc-20160816;
        b=VBKPPn9lwxEfvSuqOqa8QgPSrnlUOTzn2XCTPzyquSXQWnoFhTHjsEbcWNT9c1A8WO
         mdjhKy1G5Qa55VphmtmaQXvjSMmOBXe50EKyR7d6mbwrexNSKAWZxGOFBqeUxaw31uUG
         7VfZqQrQiMzuIaHh7wZAg3wZM25sxqOOwW4IT/esSNesVEeij9wQyGTHRjzu8zfIJ8ln
         0OWvxL2RR9gyF+ZdVKOlmP2zhLBnQrfJR63Q5AopkyDoazsLf0W7cOXljcIPSGJjZGGT
         mU/tyKK5BT7ufx964uW3WN2dSnzQEC0FHAhdNPBPtYunyOc202G/x7CCUZ9OYf+zTa6X
         xKqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:to:from:mime-version:sender:dkim-signature;
        bh=TZVhxnkyYSZrQZBsalQesbsISQbTjasdDLUi3mEONis=;
        b=HavQNYlAg2h6Xzt4d1+B7j6pWCVCenG4zx2jKVEp0F7RXcv+fAQyVouwReM7UmMuhW
         uL8/6I5kdwgHhc307jOVg17aO0/byaV6d4b8u+6k4nsfcuadrBk5r+fGUYA/NNSlBQIY
         pvTwk2OxDKG9h7YjpLSKREEZ0iI+yXM9gV0nrEb7jYXkP0dnPeHAqPGmtVSeBJgVG2ku
         CjMfze7lKyNHLxeXLziOsQ9RNSi9DWVSRhJ6T6NTgfRbDihdcv3cNQHfF9CTedwE5wjQ
         ypYfvnBjn7oiYssfr318YKDsiaQwwspI1gx3ktEmG9/nqQ9cfmcptwcBRs0yHfQUcVjf
         4+tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PY+oqH9c;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TZVhxnkyYSZrQZBsalQesbsISQbTjasdDLUi3mEONis=;
        b=Adtfvj/bINp3BSO6XJpDyt9nNaYnPgyZgubIrs5a7qC74LiLGAFaefBF+KudJZYqj6
         Yy48XDiCS2IzKPrTRUYkNarEgaZ9mmZUJs55c8zgGDQ0sT8N9ecKnQARRRWk3ZzgMrPv
         3gvL0gN5NQODs9J1K7JpKWf2vQrOhLahh7mUU6r+lVcXUt/nwnggClAd7yM+dTuia2ix
         IVDJLAdgHcU6CtFQ9XtFyRevJJyBwzQDo4YzgmCf5id6Jihopq/7leMakbuquY88Euq9
         o1CLPAWuWNaD+A9bM3+eG6ASt8ZUIGSmb/NXiym6fCirY1dss+EjIWdkDYEE6fO+xGhC
         klCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TZVhxnkyYSZrQZBsalQesbsISQbTjasdDLUi3mEONis=;
        b=p5HCVejPNMC4O/qi+XqzHDUYbfSpZ/RZ4I+ziPLYwoZEGD6pa+6pvan5IB3qjMWPw9
         Ntb+M8Y1WI1I/SIIyHMIwfvw93LgCPfDXGUSblUWdWvQGn/CTzgdhadrio9q4dTgff5f
         KJ1vMZW6sE6V2uJedTpJlGv16SNag80qy7pdiznUG+B5V4nFeS+Mi5OK8wAL+dwho7U5
         q6NuHTxriYfabyPYT04EyCLHkOo7tz4EuXPoOHtwHRQYySistcyroA9AGf/ENKMCUwK9
         Gv33Iqd+Ms6z04CvuWX2T9AkkcRj9ksXaz5rwe8Kz02IBjqiSi+so+PAnmCAq8J9H0Qz
         OlUQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXBGOhQPo4xDZSMCgrxowxIZQQr1C0o6ACUyj19bu8FZIXBVCsW
	7IdwNOvco0iUNkDFTu4ryRk=
X-Google-Smtp-Source: APXvYqziMj2GSGI4TtM0nQ/wGaE5OLfCYjZLNY+WtcNw1akp8sAaenu6xw67a9j8JqXjoPIHJJ3pmw==
X-Received: by 2002:ad4:45b1:: with SMTP id y17mr5631292qvu.245.1578513975608;
        Wed, 08 Jan 2020 12:06:15 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6214:1021:: with SMTP id k1ls750008qvr.4.gmail; Wed, 08
 Jan 2020 12:06:15 -0800 (PST)
X-Received: by 2002:a05:6214:8cb:: with SMTP id da11mr5486163qvb.228.1578513975260;
        Wed, 08 Jan 2020 12:06:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578513975; cv=none;
        d=google.com; s=arc-20160816;
        b=TuUawgqXWuHsoTUcTLyarC9e4AYgRYWFGzcyVuLRU/4CgdWJgcR/RU4ugUEUa5Myik
         00btgPrucp/iA3Ngwlo5PEDFzXszy8Ktfqe0kBwrjRNiy3ghuD6RYC40UOBgK0CZUpZs
         l82nvbmvzNUsHOM3syC+7RLhUbJgNgehOiF1n99CofCWsQljlIghQdbDfhSMH6ET7twu
         EtKML0uK6ZzRiVWr0OrFtq9VEBEobqkgnVam8oBJY1KtMn+okjXdI9w4V22/vCQxtUwD
         vVLThypMgEIfaHOlPDh30Pgfa/6g9ji+nYmdgtBcqUpbvdNIpASvTzHXqF/dkie2af2M
         LISw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature;
        bh=HDRCc3IhdlUQfkIcyY3NdGL2XXgPoOrjEbcJ9wq2V+k=;
        b=u9/hy7SJ13AhSaZAbcnASnMh2CBhhiNo04vEbWVsEhxHQGh+maRc0jiTZs8zpfgazx
         lxADXz3ZQXldYy4C/jxxKq+IljFjB5wI8FFG1MbVYSxVP2FVXGTZOQ0NL11gs8oHr2Fe
         /sl+Pje5j1dO3cWEsxU7AaN+RTNOW3D7xlWVdOiI7b2+quDc52Jg/ixF4EUZzT0wnlUb
         2rxIR7HSV7X4cv0OG8Y/r7Ry5yzRZjxyFNE2WDyRfbD6OrOgSj2EzFzIa3Xe1+22NBPZ
         xSUdPWs9dJrv1fwiD2mQi90HFTqVBY01Gkwm3oS/HI+ZQ84R9obcEHyYBIgXG3Et7dQl
         89SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PY+oqH9c;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r62si135824qkc.6.2020.01.08.12.06.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:06:15 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A25EE2072A;
	Wed,  8 Jan 2020 20:06:05 +0000 (UTC)
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
Subject: [PATCH v2 3/9] ntb: intel: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed,  8 Jan 2020 21:05:22 +0100
Message-Id: <20200108200528.4614-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108200528.4614-1-krzk@kernel.org>
References: <20200108200528.4614-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PY+oqH9c;       spf=pass
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
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

---

Changes since v1:
1. Add Geert's review.
---
 drivers/ntb/hw/intel/ntb_hw_gen1.c  | 2 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.h  | 2 +-
 drivers/ntb/hw/intel/ntb_hw_intel.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
index bb57ec239029..9202502a9787 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
@@ -1202,7 +1202,7 @@ int intel_ntb_peer_spad_write(struct ntb_dev *ntb, int pidx, int sidx,
 			       ndev->peer_reg->spad);
 }
 
-static u64 xeon_db_ioread(void __iomem *mmio)
+static u64 xeon_db_ioread(const void __iomem *mmio)
 {
 	return (u64)ioread16(mmio);
 }
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen3.h b/drivers/ntb/hw/intel/ntb_hw_gen3.h
index 75fb86ca27bb..d1455f24ec99 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen3.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen3.h
@@ -91,7 +91,7 @@
 #define GEN3_DB_TOTAL_SHIFT		33
 #define GEN3_SPAD_COUNT			16
 
-static inline u64 gen3_db_ioread(void __iomem *mmio)
+static inline u64 gen3_db_ioread(const void __iomem *mmio)
 {
 	return ioread64(mmio);
 }
diff --git a/drivers/ntb/hw/intel/ntb_hw_intel.h b/drivers/ntb/hw/intel/ntb_hw_intel.h
index e071e28bca3f..3c0a5a2da241 100644
--- a/drivers/ntb/hw/intel/ntb_hw_intel.h
+++ b/drivers/ntb/hw/intel/ntb_hw_intel.h
@@ -102,7 +102,7 @@ struct intel_ntb_dev;
 struct intel_ntb_reg {
 	int (*poll_link)(struct intel_ntb_dev *ndev);
 	int (*link_is_up)(struct intel_ntb_dev *ndev);
-	u64 (*db_ioread)(void __iomem *mmio);
+	u64 (*db_ioread)(const void __iomem *mmio);
 	void (*db_iowrite)(u64 db_bits, void __iomem *mmio);
 	unsigned long			ntb_ctl;
 	resource_size_t			db_size;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-4-krzk%40kernel.org.

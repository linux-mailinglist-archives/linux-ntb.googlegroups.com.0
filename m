Return-Path: <linux-ntb+bncBC6JD5V23ENBBKXLWXZAKGQERQPQWEA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACC7164CA8
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:51:39 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id b8sf752342qvw.3
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:51:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134698; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZNAAOHBKw4PM9PpgoigaqZA2XgXb50ynTcCfzefKJsPn8n/a++tM1QmFC/Sb7sgZzX
         Ra5xpWFV8LhMKGvJM7Thj2i+xsQKeqInbXy+Q7PFJiLCcvdZJzuIX2vtnkDheO3quHnp
         ZRY4iqYOWDYVy9wCHCjpKKlQlwiwjYskMNccgSue+7yKa2TE8f4buzCqskgVlic7bH+/
         sAuLRvPzEJ8W2JUT/VfuVEeizNROkcJ7AR+KhK4cKpomGY6z46nh0xFCV/kxHloeIJhX
         juvHI8KMf0VlGIYUDkAh2iil+6GW8+jYfUoHVX2NQy3LLUVjgro7CqequA7pgDAvyxZ+
         bkQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=W5Obh9lkluMQIb+OmVrZA5uVEMqQmMZVmeN86AWCa00=;
        b=LCHEg33wf96pOXQ4A/Dpz7XbbI6wuh2e5a8MbRK7xRLUkPCHXj9KJczzmgVxEzCQMR
         PyRtFzorglJsSC5K1K2RycbY1cz+uzf3TBpJVPH9+dh84tS7j6m52fn1lFUJpdxqxGMd
         pcfapBDEMKWc3cq0MqBQlpX0d9QApihLCEBCwx0Np/kFiwZ/S0dleaZ9Qare6mQdRn2b
         hk+z3nXNJPI5mjllZRl3Vl4BQInw6EIsJ/lSZLxGWIVZ61215uV09BbsFx61fRcalK57
         2P4x2fqAV0bGw/lPDcOJASRPg5qe5FeJpZDmQ448jnadHDPtPJzaRxWIj6y2zzxGBpb5
         zUdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rny0oAnw;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W5Obh9lkluMQIb+OmVrZA5uVEMqQmMZVmeN86AWCa00=;
        b=A2d8nS1shzJPlkQw5v4zfT6Azf9oGRDdv6KHKunhW7JsL2jzYhcb7nIitv8RFQ8E8X
         xiezMAc+WkzWFgUzEH7+WS/NmwAPmhaj2sVxFtZCVC7gchgp1AKo+/d0N4GLtbJpSBOz
         d2FT8pEdgs54MKBfKkMiqxZI86s+IXaU6QxDeba5fmRGamhKZu7ZuCOFZCi3oCgS9kd8
         XZ9h4xBqC6PJWF7dfdiJ5BheZNzs4F9j1s+hMbQnn13a4YlOmq4EjBThN6LrtetpdXU0
         JSbUplJ8zdEBj6iV2KzE8lsjn2QY8M16w7EpqKMdPGI8+E2oQViB4Zy2BJ51lXVXmT2L
         ZkoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W5Obh9lkluMQIb+OmVrZA5uVEMqQmMZVmeN86AWCa00=;
        b=mr9G8TtOCkDfidQ3HUePq+C2aHPdu8Di/KUENTZO77dqh3eGDmFfLQdcwRnhqnk6g5
         enAkFwi+XDvGhGlt3Jz0cJDq288RMqhWXmPwdGaM+GWoiwYccVt7q4DDsQSElecRneK0
         SOskiku6CmXegWmpg7B3I222nrY6hJbbEMnp9rDxIMplwot1j6inykX1L9AXKcam6qBb
         MIihNOg4y4E+lAk64qbt9SzA9gCPCy2aMM5Lyt/iswX/N93YwuojtYy9CUOLmE6JTITe
         pjeuqUFQBLU94uttqqnfmH9yIGjhjSRptvBHP1Zhy3cfEVfJFNt8rAAc4Qj7Z9n5HTX6
         Ysig==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX5XdyVKGkEg5PX4AkOEA5fGl0CGSEU8ZiCcHDkzzibEqrvWRe+
	HPHl2wbvIHpcK5MWCFbw47I=
X-Google-Smtp-Source: APXvYqzBgtyy2s8U3dSCjrccyyx6lyMiohKkkdbpL16YLYhphJARLOrbJF5C/675xbljrHf6TPtrTA==
X-Received: by 2002:ac8:340d:: with SMTP id u13mr23295966qtb.114.1582134698151;
        Wed, 19 Feb 2020 09:51:38 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:1762:: with SMTP id u31ls98496qtk.9.gmail; Wed, 19 Feb
 2020 09:51:37 -0800 (PST)
X-Received: by 2002:ac8:1635:: with SMTP id p50mr23371192qtj.13.1582134697720;
        Wed, 19 Feb 2020 09:51:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134697; cv=none;
        d=google.com; s=arc-20160816;
        b=Dkefs15uM4ZgWnTiocUVjOOp3TYEkvtOJ72bY7FP/bjKtMqaxSYI2n/6Db8KQESP7Q
         gYTU2C54mOu3kqeC5x6iwdmO7QLYSbXh5F9MeEVh269oQwWGksxNFwxAPFH1FsThX9R9
         5of2rgPd+AanZhtu0lITUgQDs2ekJxnyik7ovpHjpaFPCqPwxz8enDSFNB+LqMJDJ1Ig
         kq7JCw6VpfZc4jAHtUMfP6gi2sI+SXvuHAIP8qDOhmUbHDqS/jBA1XyhPsEiUqWGVRx4
         tCcqmezmqk1fpr/aESmiRgUAEws0wxmkrD/YdIx7nzHVwebg4S2KSdH5HP6tkqA7s/cC
         qeBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=smYXSXjnxMI/iXeUUycrt0Q0sJsOe3Qsj5Z/ndyG1xQ=;
        b=GvIXzvo9xkNSXfFOoBIMS/JhR5uDFhBjNZxQ8yxJ2PDbuFSCS4O9b84jxQ0ykuT4zq
         xkRwFlYfvfYO+C4KxvUimDFrIsUTfcFIMBrd0a3AVkSD+O+NuzDDRaKXEOslI9e7qiuH
         CjsS+HmUw6+nHZmGHdqbCJ/QjIVcP5AHeqnngeJCrgBb4M445cX5kDn2+Lv0bY0Wobty
         wGKSMZ751bGdN/SmYF2c78FjgEQkDl7CW45LmPGAb57DB7aq4sZ0r6LwmMkCp2AY6MS2
         YaboH95PDDmQ6poRAKbcyS+485egEu8guxrvta+ja+rCYb7ygRQ+8WAU37TPY+EfnJ8/
         lyHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Rny0oAnw;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k49si57299qtb.4.2020.02.19.09.51.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:51:37 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 84CC924670;
	Wed, 19 Feb 2020 17:51:26 +0000 (UTC)
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
Subject: [RESEND PATCH v2 3/9] ntb: intel: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:01 +0100
Message-Id: <20200219175007.13627-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Rny0oAnw;       spf=pass
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
Acked-by: Dave Jiang <dave.jiang@intel.com>

---

Changes since v1:
1. Add Geert's review.
2. Add Dave's ack.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-4-krzk%40kernel.org.

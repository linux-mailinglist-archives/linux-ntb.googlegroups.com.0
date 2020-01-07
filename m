Return-Path: <linux-ntb+bncBC6JD5V23ENBBBXQ2LYAKGQETHHOIWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13385132BF9
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:55:36 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id v7sf187928otr.14
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:55:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416135; cv=pass;
        d=google.com; s=arc-20160816;
        b=ncive5Oou/ynZRHYkSg2xbMmSY8elmb/fS2mE0XeWhNBkmwMgV0dzQ7m0GP2ACQ/aJ
         bGp71Q4W+5/Qyf2d/K2wjRULZwJbeWTyuI6N/O6WpbktNPvQr8RB6JHgyMkFGIdkrsm1
         /ygin6M1jwdCqxFacFTki2JkWEaS41SZRJU3NOsBhSJOKPCpzfPTHbTraaPmjkssFGRS
         Igd2vb3f54TXay7STH/KHCS05pzQLkJ1jEEKcfUXkUUYWgvvt9W7fwNeJjDLqEgvy8+U
         jO/bm7FiJEpM4hSqPvUseIl+DyQMXVgxWuPVBvyEDRZ+exQDjddU+nukeV67X3eFB+uR
         dTIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=yVNtr6EUG8avXxL+c2NwxFvrigKxQGMStXob1m83N88=;
        b=oKlQKDqfM/xVDrdT4G9d+d6bnMp95RRv8tgI+5dYBS+sgY93aioSfIvy4NSz1c5DMt
         hfkwlmKW3OGGWDDO3cM4g9W6Sv27Q+i1wuSi4YW7Sw2JoTfvuq1mteow2oJb4DH8lL1U
         Go9f2FM4QrtRNT2oaWpXsA8n1L4///AarPffUCWAcZCd47Bn8vrgjq5nLmnGujz+nOEo
         W3l8ICKWzpjJCm2CcZKKksOI8Fzu6kQ+n8O/tB2FOTUSqLxK78ST6UPITUssaRv6VlyD
         MJT4feJS4fBkw3P/dHJVAXMuau54HeoY/c5EJlhohQqziurj29wjdm8YJLw4yRNFZB2h
         eKlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ICZY6Npg;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yVNtr6EUG8avXxL+c2NwxFvrigKxQGMStXob1m83N88=;
        b=Rs2T0Jm6dqwTpS09XD7UQ+R89qbqlPO71PftSpadwIInmjUSuMQUwwJQVc+86zV5KI
         dMlg8Jlki0DrMKg/shz3U+x0g+T1Zx50hSrKP0bQAHh80HDrkNzFlMovU78cqp10N3h1
         Cl9N4nivz3SsOf/l2owscG3KJMqJj/idSVMvoTmmtf4b2IXD2T6Bg5IS0jsvSLR4/JFm
         ZVES6DFNVISqgNfQWHMTLGUykrN04vmrHgxj4lJ1FdBtqLgx64Fu7mT/CeEwiPMtejJY
         c/ximdeiL3c6KhyQNjNQlIJqfqEe+QPjl5qg98dK9W2ujf/m2nrXpyhPuU9NpFZKNU73
         1Ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yVNtr6EUG8avXxL+c2NwxFvrigKxQGMStXob1m83N88=;
        b=ZnNvRULVua/GBxWCwbHI5ONmyWHQP6z0GK3dO+rxAqLGy6amz9bJaNMDWaWq0sZdgj
         b9pGZekw+lePUOCrNcTWV8YGldNNBKpI9l/SiYnQ1rpY0kCDVxSJIwEenqpRK9RugroC
         8/2SrAFAO8w+EucW5GiiFmReo/EVTKAWGNCkzkK9Z5E49GRH1JzJvMeUN+hnysxg+o+4
         nkB1OV9mMw6QlTJNvBdukFydUh3HGUDBM4s2jqdcqezBkKIWgGa8dAhPz6crk3QULqyr
         uXjSJurH+PEvoXhYyIejS2SaRhuNNrfeJNsLGqFmjcO7fqWUhDrj48MFLu7bwKI/Sndq
         cX0g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUNc2lMagiq9PRJqwqppBXo7fQqj35odtLiQBza0+dF+vJbjdaX
	jiTVNEUDpXkynZQWZZjFwuY=
X-Google-Smtp-Source: APXvYqywziNPdOdYmASakAGL4M60pCjajF0N9uWYWS7SjkOblE7kICv47PlFK1fEK+7jAi3EHWu5hw==
X-Received: by 2002:aca:c5ca:: with SMTP id v193mr421864oif.77.1578416134913;
        Tue, 07 Jan 2020 08:55:34 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:a81:: with SMTP id q1ls16291oij.12.gmail; Tue, 07
 Jan 2020 08:55:34 -0800 (PST)
X-Received: by 2002:aca:3542:: with SMTP id c63mr385521oia.135.1578416134633;
        Tue, 07 Jan 2020 08:55:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416134; cv=none;
        d=google.com; s=arc-20160816;
        b=IlcuyBZquUcDZwYcnAdmTjbfVT+dCmVAIIeHPd7MT6cDBOuyWqqlH9iKI+uMOqIdma
         hxKlXleWe+EWK9zztDqFtt7IS9tSeFg4kftEqUcHZ9u/ID0GV7yy6UQ4/+nL4T0NR3Hl
         DAMECVTMJ9tU6aXrecsRl/JEHCHrct7aNzg7hh3FYDgrM3r8qawUetk7RFMCmV92IoJu
         Gn5GOI19VoBYocIFBti71qE0luno/tyM9DuSRZnkA0q147vZopVoMiWNrl4HB2I9f/H9
         esvvmBmEY17ToKFZWQ2IaoAW4BqjRnLSXwQxvHOj/TroYL22/iuFxpov+gpn/ldyi4kz
         YrBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8YGnhALCW71vH5+YxvJbnTBt4yGAgrsgW4/EjqxIT8A=;
        b=xCwor2YR19yquW5Upi5sNe3yn6vbdP/UbYsFfx+93TsMwGmdcnJMuo/CMhV20g8FTR
         P2NgINVP74pOyX4zlZPnVcTW7+n3MhrZ5aNJi91aVfLwMWZtNOIGcYY7lsUw0mZEXUfK
         EhL9F7A2WnZRw95T+5UqYdIGvRGEFwxfWlmfqygLTsm9lWP7/0dd/MPe99InMr6iVH+c
         6JwTcwbWAgfUWwMTnrAE5uUFZ4CgAe6iT+sHLCbvMPTmcZrlalR6BZLdqbOs2KTCOmXE
         Z+EvrAZ0pSyl3NBQsm+Oy8Y1ReYYtdKhS5SRKwIBMGNZvUmjZKinOUhwWpYxXO/HBbZd
         zbhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ICZY6Npg;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d6si24509oig.4.2020.01.07.08.55.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:55:34 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A58CC24683;
	Tue,  7 Jan 2020 16:55:25 +0000 (UTC)
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
Subject: [RFT 12/13] ntb: intel: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:11 +0100
Message-Id: <1578415992-24054-15-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ICZY6Npg;       spf=pass
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
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-15-git-send-email-krzk%40kernel.org.

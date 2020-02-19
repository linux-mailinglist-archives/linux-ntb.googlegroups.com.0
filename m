Return-Path: <linux-ntb+bncBC6JD5V23ENBBQHLWXZAKGQEYWVINMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BA3164CC2
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:52:01 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id b23sf779251qkg.17
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:52:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134720; cv=pass;
        d=google.com; s=arc-20160816;
        b=t5FHYT1TCKI1GlByLs62RgueDJnSpK36wBXiEQ4Jnvtnf5B9YWw8dJQWP5htZQFKiu
         xOQR7aU+/vJTly1dzi1gpZ7Yu4q+bVyYgV8GhAmcceB7ZHHQoalRsKbd+tkCjUhoRBKr
         mk5zDt/+PTj9OMOQTeocSCLMviHcOusjSesLppQCGxPbJl8101nHaL2SUrqwH4DGrOgx
         1bvgA5O9PxvwCrRRjPLxjZUnmjbbP927EpFg+/k9mU//xf5d0Ox1zu6Xfk8tUW9HV3ts
         Qkh9GWeEiqqYW4svlOppa0SFgtiJjcGLBm5QeMEAI4YNwm1HDD79NJ1trsQaC21e1/jp
         +rqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=JylGg3dSOwp8OnkVLfqledWNKZ3ebW/CPsxlAxa1cVs=;
        b=y+QtDAuq0SRWWETc6uBagWVVA5VZYGWopbNoun0jDSMRxLxx/7SmDQt97XY/zODpMG
         e5C3h+3SCVj9TpQOPg6FsWRHz10DE5jNAK9QtD7T2TGL0pj8YAbxH+HUwM7x9Av1UKx+
         MP3qgOvsiP5/9pr+n5qePkgiUNAgecKXCHJ4S1xOd+NIduUmrUjknVm47nGNPkOSMS7a
         espj75eOngMBchBGukHU8vDbMOFnI5wl1S5mgHEF2HuCLDsSFTx1VqUyl9LOUjis3x1o
         08wnaxYSgErtXxo1qU7cUzEulwr63eA65mOedKtGXPBXLTdYuqsqHeBVT8r5Q3xuESp7
         O7Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=edkRajat;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JylGg3dSOwp8OnkVLfqledWNKZ3ebW/CPsxlAxa1cVs=;
        b=n58Rf6id29msazQsYbWkT02p5aPqbX7Bkl6kVcDj5sSrNmREYeQ9WD2ETEufvW8q+U
         2ABAjqoyCARqDoAWkeFFpiD5VNcmlerhx4yV8NChV0290E6clyl2jjwdIfLedKoJEsEb
         bdrTyw7rM2krQacacTqniXEnEzvb3FkmenP6UcgY4bmZtZdIYGQpL8NdLd0+of66+lJQ
         8qMV09aSiXdmypTxZx2gZayELOvLXogKHda/GrKcevRZHqeWsXfvoOGiEN64tUakRUyg
         YnYiWpzVpvOURhIv/+Qgy92I9Q7PiW3RvntUNSu6n1kWPWrUP253i+LKOh8jGn/drCev
         jmEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JylGg3dSOwp8OnkVLfqledWNKZ3ebW/CPsxlAxa1cVs=;
        b=h5OoF2giJtFm37nYBq0ZMTNc/RLAlBykI9sXe1s+yMFPVcfda09gf9OyvywbOZBXv3
         VrMmiJXqiaEU92Ys320Qd8nW+5uMaLodrttAQ0yM723bNhfR6J2HSpxPgiKvDWleo85e
         c8TsKF+Cg7aQXaXdGcHiAEVoyHSwA8fJ2E/LifK1EbwSh5iM0DEJp0adjG+EDqVf27Yl
         iaUhp/npg37oRwMIZeGqjDyVtWvC96VFYDQLWtn2av0tju5UiY3PPCpPfYjKU+0UZMH1
         uXZwSvWT1uynTX0cBY4tIUMrCmbGSVfvUGWuDPzOSvPuVjHE5cMufYcPkXkYIOJeyUAI
         jDqw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXCtFxHCumfsK0PLFCzQED1HovbCDNb5aF73aZHC3p06M6KvpTZ
	ejRA7RmRlG9WelE8idAa2QI=
X-Google-Smtp-Source: APXvYqxdAsfDtV1v6mz4r+F4+HmvCl9BaqdjYRk4ebbeDQcaT20IowdX1+UfeJrJYhNCzzDSzeKnHA==
X-Received: by 2002:ac8:51d0:: with SMTP id d16mr23214083qtn.170.1582134720380;
        Wed, 19 Feb 2020 09:52:00 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ad4:4721:: with SMTP id l1ls1785166qvz.9.gmail; Wed, 19 Feb
 2020 09:52:00 -0800 (PST)
X-Received: by 2002:ad4:4dc3:: with SMTP id cw3mr21827788qvb.130.1582134720025;
        Wed, 19 Feb 2020 09:52:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134720; cv=none;
        d=google.com; s=arc-20160816;
        b=szBO6d76rZO/Q9fQd0E858ALPllA2tMokbyLNGKDuyORT1oRQGcTafbvWTd+HAOG2h
         c4nNcBrs4a/OueA0k4c8cuPrfz8tYyQ3R5pxsJcIxtaV/L/ItLbj5bidfHfaS6Yyx0R0
         Rf8nMB8a4DEY62LUX3is9J1LwpgP6snMIWRXs/iZcAgY6c0Xp0Uy/8TtXTIvfFl67U81
         Cta0BSgNHuqSzXBBBkxJLGItzI9Y8ZiwBNlfCKx+usvzEMlDvWDQvgLr4JN0rQuTRz/E
         bJWmKvRGMqOS4/eIZHG6H/dOPVPolR3evF3k8ux9yEdau24O6N18djg8XJzD8GotQJXs
         pSSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jTOcZbDXjZ2XPyyZSgGcuIRMUves/gxQWO6vaPfuQJQ=;
        b=lSV5ov4HOHT9NNa4j++lTqKsALVlRZF0la6L4VS+ZJy9nwQgws3XhfwD57QAw/l7Lz
         TumaBALoh5fN/A1A+o59s9W/fkpJlxHCEw3QyFutd8+ahRIUP5jktGkcT78L2Hb7pH1t
         6YJoQ59lZS8HYotsSSp0WCMDzzsAjczq71eiOSADyl4Qttaf2U9RRmqDohbo5almiHjV
         XfonpLYjtVebw4mh4t9Hv19k3b24eTaieeVQESbjmDljY/+27Jl89OIJiq1vXl2dQbi0
         /DhUMFXEKNzMe3WbUEXR5PJZ3EAAN48Hf7Qm7Ijip8UmY6p+PE10i/9Wao15a6wzBjyX
         c2ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=edkRajat;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k49si57380qtb.4.2020.02.19.09.51.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:52:00 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C3EF324672;
	Wed, 19 Feb 2020 17:51:48 +0000 (UTC)
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
Subject: [RESEND PATCH v2 5/9] arc: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:03 +0100
Message-Id: <20200219175007.13627-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=edkRajat;       spf=pass
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

Implementations of ioreadX() do not modify the memory under the
address so they can be converted to a "const" version for const-safety
and consistency among architectures.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Alexey Brodkin <abrodkin@synopsys.com>

---

Changes since v1:
1. Add Alexey's ack.
---
 arch/arc/plat-axs10x/axs10x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arc/plat-axs10x/axs10x.c b/arch/arc/plat-axs10x/axs10x.c
index 63ea5a606ecd..180c260a8221 100644
--- a/arch/arc/plat-axs10x/axs10x.c
+++ b/arch/arc/plat-axs10x/axs10x.c
@@ -84,7 +84,7 @@ static void __init axs10x_print_board_ver(unsigned int creg, const char *str)
 		unsigned int val;
 	} board;
 
-	board.val = ioread32((void __iomem *)creg);
+	board.val = ioread32((const void __iomem *)creg);
 	pr_info("AXS: %s FPGA Date: %u-%u-%u\n", str, board.d, board.m,
 		board.y);
 }
@@ -95,7 +95,7 @@ static void __init axs10x_early_init(void)
 	char mb[32];
 
 	/* Determine motherboard version */
-	if (ioread32((void __iomem *) CREG_MB_CONFIG) & (1 << 28))
+	if (ioread32((const void __iomem *) CREG_MB_CONFIG) & (1 << 28))
 		mb_rev = 3;	/* HT-3 (rev3.0) */
 	else
 		mb_rev = 2;	/* HT-2 (rev2.0) */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-6-krzk%40kernel.org.

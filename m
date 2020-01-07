Return-Path: <linux-ntb+bncBC6JD5V23ENBB3PP2LYAKGQEGPUROBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E54132BED
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:55:10 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id k9sf37878ili.8
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:55:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416109; cv=pass;
        d=google.com; s=arc-20160816;
        b=q4yx8Wtyo0Al64/33687SOHx2nFEmk37Pz89vzXwOvScvBTBSEjlDLAmbTFHMBD3RQ
         DTn11WVMWAqRx8tMMMJ5rDmLIH4arehLxy0v3XhiO7XPM9ULxoGFU3+ZqhwI2dOzGXcx
         DRhASE1wddqNX+38n6jaJRh6GDh2IH6IEPXdZV0QD1thwC/T3PVC5XkBuZXseqENpwt7
         P7mhm3hR6dJnitC/x1C8KzWBS+zhpNlBodStoMvEuVDfObBiPnY0029GmUJaxHMbmGXh
         qt/2POH/VLR36+Bj74QXRxDDitqSsEVHh/kOUdp/RlbMKIcRaZa9li/yVmIavVnSn/DE
         jtZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=9FvLQYcQVvmv46OuSwxPjb6XzrLw0ogXqOR69cRhmr0=;
        b=PPvlcTmYf3TA0PHSMZgzWHks0Ku27C+o1kbYWZrvAYBlfmFIhpr8z1h4c7IQ56u5S/
         s9/vQ6GyU8lXnYTcH9HXYaZUrq/7MW4ZWy965Nwh9+B4fEA9WQV/PtPf6tyVFGmNxppZ
         tpqRLycy3CP9KwIFB38l2oIzehrlbq3krFbPf+zBpyMGFSr0R8xzvmZBrjsHUNMkQ+iV
         dcak9IKonDIUyHjGHJ9TWn5z5citUEYZ1cLUbB5y5akdGFXHhjqYTucRwSR/hl6+Aplp
         DsjjPJqgyvj38zgWgD7b3kvMwuZGoM4lOcXcfl2ff0Syo57MSMqQdcjpqZu04tc3owbt
         QDDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dvt+VbDP;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9FvLQYcQVvmv46OuSwxPjb6XzrLw0ogXqOR69cRhmr0=;
        b=b3au2ilMqXLJIhN9t3YhozK/Vk67xCV+ScUn8e21NashhEQ2apoDahvQEDVmoZ7k3/
         j847R+6/yMH8rgFFw3KpmPqssCFBJAiSZnOh7HI4xDSVJtjCXDN9l6ZvaKZR94Qx0YmR
         LOPDyp1OEyVnlVkguCtxhLvbvRQqLLlfJksJZRep7vMflukaDXX6cqu8GZMWJd4EblfS
         ipG2SvJKqBY/XOuU3k7N3N6Qup6Kke5Qc4zsddNu5/wSBQCp2BxIoxeZrnyUbHFM/hL3
         5rRPgulmz0C9WCU85PmP89KSGYM+8ZcDumm4RZ8Jrnh3fOhHjLsKwJ5kD+SBiHBBpGZE
         gYVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9FvLQYcQVvmv46OuSwxPjb6XzrLw0ogXqOR69cRhmr0=;
        b=c5jwNm0pI415FpVOFKr9Ri4kVrgkAiQcy7q1qQm7kj8CmKseLlr0ji0+pWChbUMcK9
         KsmJbdEFu1Ktn7zAMRrL1aoDB9n9fqaoX2/5HRx59C5MpCBXU5l3onau0w15qiyWRpt4
         6gdMMCfP1QQADx40vM2k7RuW1qaGSL4GmBlbxAQZ9/jV9r+CkWYRaxn4mp+LFfC+uNMg
         kl1yK9NuljKLhkp01TvchyBCtrq37qIEdTnIjL4nFZxSKVafqQJW/zdQPbjfApZaAT4a
         GvsY4AdjGQ3f3Io7SGZ+yRlynm0WH1P7LJrbdk/w9rApsrEGYjgljXRvQhno6WYZrcIB
         SeeQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWMFDiNRON+t/G9GMONPfMk2DBuNmAeZY7UohGbYPJTB+SbNSL2
	JLNRuLE7+bjKresN66/7EbU=
X-Google-Smtp-Source: APXvYqw0ld8jGDimE+lepxrE3anJRaG/ziQn/kyHVbnfqrtkg7iatBT8ebWjNoj7OYqrs5yL5FlW+w==
X-Received: by 2002:a5e:cb47:: with SMTP id h7mr1600402iok.33.1578416109669;
        Tue, 07 Jan 2020 08:55:09 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:db04:: with SMTP id b4ls57887iln.5.gmail; Tue, 07 Jan
 2020 08:55:09 -0800 (PST)
X-Received: by 2002:a92:d30d:: with SMTP id x13mr33942ila.170.1578416109423;
        Tue, 07 Jan 2020 08:55:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416109; cv=none;
        d=google.com; s=arc-20160816;
        b=Uoee3eYNDrEFbwRRKyQfsALCnSE3pKEZ3hB66PC2wPN4YB/T0E3T7pzjKSa6T25/5s
         9zNN//niCB6PDLzb8VzjyE2vyAU9jE542x2iMU1g/0kXT6KfDV46/mimG2uHAATFlRma
         NvVNRNZjvvBzMlibLrpt34rk7v7EsW5a/mMThg+8vx/R82xFYIVnygp6sx6eSAZMKzgd
         CQXdToMezkuaKPGXA8T56o6VKZCShS91UQyhQMifmoWJwYJxKHDjY4o11dz/g6dMx1U3
         xu14Vf4ey+apDMnYlZXCy7oaTjdzZeod2k8yvu4Fotp6PYd2FMFPZxtNhfKW/zqmLRAC
         eYnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Ogz1zIFOLPunK4ogjk4j7xg+IeGTHRBQljPBWnhbph8=;
        b=bMusq6LMvX/bG2hllA6Ovx/Vh+4A7mbB5lhg/cZcuYW3Bt5LINwyEYgwwaDNdIEAZB
         hNh0s0p2Dp6N7iB+tsVmYbhIQ/Sv+v8gJ4YBHrGvjOLvk+pDXnZTNG2VXS3TIN0aS4WQ
         dLmm+oUus180eSnZIXH7KWXEBtGb9YpgzcR4MqcyIsvOXLMuGLcfG8vGGtKsUYQtueYW
         fw5omyNlIFy1fdBcccURJlS5pTQzlKMnbDaO8nIZdazcAVNEyZ4Ar1SNGJjvRyCULqqm
         FUsS5ESRgKYhF/Wnr3NYdicmcL6+qo48XRBkfQpYXn1HkxT7kZdnm1XDyBCS5db342F0
         6WUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Dvt+VbDP;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v82si20705ili.0.2020.01.07.08.55.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:55:09 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C767F2467D;
	Tue,  7 Jan 2020 16:54:58 +0000 (UTC)
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
Subject: [RFT 09/13] media: fsl-viu: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:08 +0100
Message-Id: <1578415992-24054-12-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Dvt+VbDP;       spf=pass
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
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-12-git-send-email-krzk%40kernel.org.

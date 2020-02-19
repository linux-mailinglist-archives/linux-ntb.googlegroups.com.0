Return-Path: <linux-ntb+bncBC6JD5V23ENBBNPLWXZAKGQEOUXOFXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF75164CBA
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:51:50 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id c130sf861136ywb.4
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:51:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134709; cv=pass;
        d=google.com; s=arc-20160816;
        b=FeFmhwqhOpof0tiWvGFeMPceqjTsxJyecwVPby1fuAG4gLnS/+jgr3Osd4pvG4N18Q
         bDG+GosRnTiv5EMLrfVWdaZ9E+8bRmjAixhAwWJH+VJjsxuL5dYVECi+AFUpVzCpDI6P
         zrrMSXU8UM08cAKqAZ/i/rQcfWVHTkQqkurYj3xsf1NJKQhgWUbvepk3589ocY3krWYo
         NGFG+faN798g9kmxc3b4/T3BCzWoucFUCfGCs8ivpf9ja/Voq0RiuCNxILKgXa56FQqT
         lH4sMlvl/xRzL0E0uGqgL5ZWdrRmp9eYYa3V2HlJ4cIsqaAuSgfHO6240ntxqJltLqFS
         6DsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=4bIXbeX49ghnGuJDAUKp2dvYViOeOM+RtS5Dv/KdEzQ=;
        b=GFJ0CKbQpeHLqU7NwMsjlqs5U0euveTHXWsPlAi2K8KZ7ZKffXfUAkX6llVMJdKdtO
         wtnhdSPm/R+cjA0+ATTen1zYsPkVCyH1S2w28mG5Bw6jLhnW2grN9uscmfAXHG2QbDN4
         NwdPqK1n8/wn59Z8dsS5RU4E66pyth6+Pjn8Y8pXWI6nKkmF0oLozSVujul3ZF4lItDH
         RiXOCdQpYzfP8VO1TkS85wEIECgPei1oUWe8OoCdQGKzHv1vuA/a37ZViWNpCtSzaRy/
         ixx0X90TS5twpRJRLq/8XoUjCEOCquSVvNQDRTmFG+NgMAnhqqVZYormvAxV4R3gRDMe
         TcgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nps+RvDL;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4bIXbeX49ghnGuJDAUKp2dvYViOeOM+RtS5Dv/KdEzQ=;
        b=O3I7Oqlwl1WN1N4IK/b+4WxPJLoj9gO56rzPA55h2nSYCRoWOjlQIi3wNplUB8+WP/
         NSuEVgYoTqgAfX8lSILpbZmRsAdLvSZ9aK2MwdtWRZAiB+yaiNBMxah7o7qPIgj+nVco
         jfwxA+XZ//57LM99B1J0MxvBmzA05CgJaVp0/XeL3EM1vWSVcBaMurQLtLxo1OjlmzhM
         61f1u2nzkk/9QT9lk6sEZm+rsCuyowA107AUuUNDnrr+ZwLqNgG9nSg20f+OUFeGM74W
         TJeVUo1apwR4f1UL3CTdXy67eCUaZ4fzGf2ZLIW0RfhTdpxLSWxeQ2qEzxwPC3vmYn0i
         jlzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4bIXbeX49ghnGuJDAUKp2dvYViOeOM+RtS5Dv/KdEzQ=;
        b=hJWQyht0jgidnGwuDt+slifw6OTMr84IZ9qz2+bowNISRkYfwTYckctrU5Pgwx9NGi
         nQkPmvfZ41nVG7FbrLGYuQU2Nd2ImVSBFWBxH6t8Zforebn5O4lIGqgA4cO6IplbhaFD
         XevDP/Jdd8LVlT/Gr8faTWQdnygBuORPzoiYSqI5uncUfOjRV+DVBaKvXxJE9EJfTTKG
         VlMZJQS0NJQBL+HbMEc+5XYeOrgHOvep7aHUcWES1yUM1k5hP77zDSUpm/EMKl2CM316
         Nv6Onk7AxTv0ywaUKpt9R06SueGgb3+ccG3FpS8OPhNzM/Sid8zNxdkP4Q4u7vS96VWx
         ZnWg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVxjm5DNcD6Ztsm0DTlR6SiLzJYOGE4emE8J4sptBgxvIRhMwrm
	epOKOwmOceaZxqBmcp1WOQI=
X-Google-Smtp-Source: APXvYqwSm87ddFUC/09kviKqOa45JXh/1LxizD+hJ1sBgufuSC+7CtzPPSoaaKdoS+Gxr0BSA6tl2A==
X-Received: by 2002:a25:2c17:: with SMTP id s23mr20324731ybs.211.1582134709554;
        Wed, 19 Feb 2020 09:51:49 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:77c2:: with SMTP id s185ls64456ybc.7.gmail; Wed, 19 Feb
 2020 09:51:49 -0800 (PST)
X-Received: by 2002:a25:2f84:: with SMTP id v126mr26944282ybv.67.1582134709180;
        Wed, 19 Feb 2020 09:51:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134709; cv=none;
        d=google.com; s=arc-20160816;
        b=CNCfQfs17EeMn3lOtjFiXRjo3PryGZdfdgmeHRzeaafSj2cmVf40CDaGRS8NO38ejA
         qq1q8gj/fFSFPDpUUtnyqTebQrcvyLrxi+duQaIjI+4+G6JFlw5zXcFmjf0pWGCgG+7Z
         JO/NXQjPrpMaF6JT+PeAuXfkvEHRxpzvh+TCWTorEsiE8VyNeDGdE7MLKGr12SPdxWzi
         SPNZCznDNBhbOhlpffBLqyIFRtYo6lmfmjY5M6/RHk/FKeUtj7KaCcej3uoj2JU+ErRV
         L7b4nhhXo7b+vN/NL1BTCSWnVxLXfZM7O0Ck9urigXnQOcoKnbCTxygjNPMftBWtqYHm
         X/OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mQMIBEfElIB3kvBnOsuCEqCsG8lgAhZ47Rfx4ZM1zmQ=;
        b=kjeyjC9+aChwkUar5N2Sg1qyhP4ia7wGIw8geWTDQLiLn+Fx/L7+5emT4sloz5Exm2
         aEcJEVg00p85tqBxsFivrAp3dPxdjEtRIlcALw4/7CETeOJTWZIircWQF4nQspQn+n6a
         8+/ax2x3Vv06yT4NlzPJmy8u6ibS9mhwael7ePri2MKyE+iGwq67BHKNMBxMvP+CzI2D
         CmFgkX+NdbJvVWsPGeBHu1eU2JdUCHHjxfNU27Tf9Cqmvbn0+5mTVLUsF5cer5CU8CJ8
         ekWchD6b8ILR11Wv87JfesYBsLIftlkmFEavn8UfhHL/uLzQqDIBO/5ggpvxI6VlffVW
         r4xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Nps+RvDL;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d78si71101ybh.3.2020.02.19.09.51.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:51:49 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A50C2467A;
	Wed, 19 Feb 2020 17:51:36 +0000 (UTC)
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
Subject: [RESEND PATCH v2 4/9] virtio: pci: Constify ioreadX() iomem argument (as in generic implementation)
Date: Wed, 19 Feb 2020 18:50:02 +0100
Message-Id: <20200219175007.13627-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219175007.13627-1-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Nps+RvDL;       spf=pass
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
 drivers/virtio/virtio_pci_modern.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index 7abcc50838b8..fc58db4ab6c3 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -26,16 +26,16 @@
  * method, i.e. 32-bit accesses for 32-bit fields, 16-bit accesses
  * for 16-bit fields and 8-bit accesses for 8-bit fields.
  */
-static inline u8 vp_ioread8(u8 __iomem *addr)
+static inline u8 vp_ioread8(const u8 __iomem *addr)
 {
 	return ioread8(addr);
 }
-static inline u16 vp_ioread16 (__le16 __iomem *addr)
+static inline u16 vp_ioread16 (const __le16 __iomem *addr)
 {
 	return ioread16(addr);
 }
 
-static inline u32 vp_ioread32(__le32 __iomem *addr)
+static inline u32 vp_ioread32(const __le32 __iomem *addr)
 {
 	return ioread32(addr);
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-5-krzk%40kernel.org.

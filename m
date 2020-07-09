Return-Path: <linux-ntb+bncBC6JD5V23ENBBRMOTP4AKGQEQ64Q75Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126D2199C4
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jul 2020 09:29:10 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id u93sf956986qtd.8
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Jul 2020 00:29:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594279749; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/42REvTju9UcgB71/udTluVugaVdgvW9KhUt8i3B1HtiZj91+0+8c0XvbCzqRRcc7
         I/F4sAT+2d+bBSMLlIibs/FoWNSQ5EOyQydZodmC0Co2guP/vuvq6cphdwBkwiX5G9Fr
         X4ObxZZs91Y1LxqP+vCKJYzYdr7nkJOtaHTIVuIuVbTIeZWdGV6tiRuofnv0KVmA+5TN
         bzKhDqyAs+Xy43S4us+kDC/D17XvFXnhV+tChY1mfTioEtyyqT910wWH8I9rUpnqVNXN
         XheMMfCTziHrxf8TNSFMSmVDELCLawqoj/llcFRJYCXtycDOupz772wlG4HNKX0/d8+U
         kQdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=wAWuLE92DUjIPySl5FOc3PR5Okf9T1PRKMCQz/Dm8K0=;
        b=M3gN4/SK0js2qiNJ2aF3TJrmIXIoLM98WdJ+xh1oC6n5g8VCY1kg6zDdGkzvXbbCn4
         Cr1S3HqDNBrr09mhwAzgt2wGWsgVb48XJIaMaBpocHP2YMQP5NJ7tk5w+bb+YSq30MQR
         Wq+MsO7ib9WkY5GpYdF/CjU7VBZDQ240rcciP7a9bHQ7zkNxU3p6r3l1KK5z4b6s0kYu
         dk3mmdUBad5x7psea0IDQPIvq3Ekhs7FnUN/2+TWCtA40RZCbe2nHEM75qUQdqatSaHP
         GBfJGAzYUjoJkeH73uz++RGt/jQSyFI00i8olfj/9e9uqiNq1DPcE65eqyz92AKlXqHe
         mIvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CeYbgd7M;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAWuLE92DUjIPySl5FOc3PR5Okf9T1PRKMCQz/Dm8K0=;
        b=TGgD15GI4Rl1VtKbDSvjakHcFmG7gXbqt5TLLNudiKZrRJ73lkg3VnAcoGWpeR41js
         I6XG8+nwFD1WjifhhFomcm9wyNh7KDH4X2jgCDx30wrReXxJsOAl7HXdeHkv6lN4F0Oq
         D9CAd8CVv0gbiPIbCMDzDCwVNmaQhM7YBSwcVXHtN3Dwj7Cb+xwBrf/gPOCOFpiEMH8N
         EmyZgcZ64G+CngrzZAfx6CXc2bwK3vbPvF6dpRkt55yT/En6BbaMcyKkxW+1Ln4HyGbq
         ksGyywo6ss63AuRbzKmxnYob5tEFC3cbBAcstkC8P72mqmWLeJHVZRqXAua7LhnZG6M/
         PMEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAWuLE92DUjIPySl5FOc3PR5Okf9T1PRKMCQz/Dm8K0=;
        b=XrcQigLBNnYe1hxQaIHpYVC2A/LBTtQ2utxltM5WC7l/RcJuqfQ6lIsepIeosUafoz
         04379JifaeXRlYrB3fDc1k9fRP/jnalmDNcHuDdh6INRYeBh2LVe2kn65zdPl5jGnPEF
         PvvbEcH8NjLX/aghrxujvPoJSEBV1T31r1kBowfdhpvNp5C8t1DYe8hi/oyRd+bA8snD
         1hdgPBnlOAW62cJUoM3AJFFZ3D2v4YRiYEZ+/ygwviB7ycUfdzjBUkLLp1HS6vreQq1b
         DL3zy+GjgXvvgQEZ0aNMsh4LhIZS6e65Udxylgz0IbRzWsYHEoWVdoUAA2XaEaDJxP7E
         ceNw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5333YUreeWNIavApPsnm8w6LJIU/HOB8yj1eSznOs/gCc97x0PKP
	Bak+0xbARILv27bGtuP0nMA=
X-Google-Smtp-Source: ABdhPJyIL7ZKFn55jFsH48Kfqojrbifekq6o8ui3MIAUJJXP4xAUFMar1ZAlqrm9SYKBnJWj9xxg/A==
X-Received: by 2002:a05:620a:1666:: with SMTP id d6mr63118146qko.449.1594279749082;
        Thu, 09 Jul 2020 00:29:09 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:ea09:: with SMTP id f9ls2323873qkg.1.gmail; Thu, 09 Jul
 2020 00:29:08 -0700 (PDT)
X-Received: by 2002:a37:6589:: with SMTP id z131mr61135821qkb.235.1594279748791;
        Thu, 09 Jul 2020 00:29:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594279748; cv=none;
        d=google.com; s=arc-20160816;
        b=fKhwVOy5O99y43nQsQuJUYA/rw5EnCrp1OiVGYzxa+FqUwtkAsPA+L/2EMo9WIgfTW
         3FQlC4JD6+/izFp4Ixzw9NfQoPAhMpeHJPKnfu3gFFWX6vJ/WlVAVwA89BN0OK0meM5Z
         yAZB1aKmH3aVy5dV/UxH5S0b6BR2UGvjPxHyNnyYUhOq1c+kXjCONf9EHUH3XqU3ERh2
         fRGzrGKce0jvpqtie39W1NwipXXYVtwwxcNiCytH+jw5NLQV96XLyz4V7tuZkR0krqR1
         7EtsizoftSQO2t8PeHUfNhsWgC8fk0d0ouux3/0LeBcHzK3ufW7ipSr3HDiPXabGblOk
         oWzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=p+GTZDcvfJmTLZijl5gOeqqdSmTumP23gY9mSaxyofQ=;
        b=UXRuXpLMmmygWlOU5W72HGoe3SkOMeCs/cIAeWB+KpQVqhNILQIDBk26BQLrbuwbVS
         7iVQO4VtNjeoWxUZsM20qKyWYCX9e+px8HJ5wqeSOjwOnSWmadvUJDdiVuFeIbzRD/vE
         2ObsZGvminZvZznzWTMLZG9vuFVsq4vORcz8rFC135FZYB12u6Nil1py7rW45nO+87iv
         LE3aEetcilrc9/AZ+fY36HMD7RoJjYBIZr6V97vC1+hM4Hs6unQeBBX9EW6MlECmIr1X
         WckT+dd0b4XeilRkmg5Ic6fdOeTO7TbwJKd55zeGoYsDJ488Ve4A9IOvKuCNiIT3MS43
         j/nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CeYbgd7M;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q22si75107qtp.0.2020.07.09.00.29.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jul 2020 00:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kozik-lap.mshome.net (unknown [194.230.155.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF6E72073A;
	Thu,  9 Jul 2020 07:29:01 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Dave Jiang <dave.jiang@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 3/4] ntb: intel: Constify ioreadX() iomem argument (as in generic implementation)
Date: Thu,  9 Jul 2020 09:28:36 +0200
Message-Id: <20200709072837.5869-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200709072837.5869-1-krzk@kernel.org>
References: <20200709072837.5869-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CeYbgd7M;       spf=pass
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
 drivers/ntb/hw/intel/ntb_hw_gen1.c  | 2 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.h  | 2 +-
 drivers/ntb/hw/intel/ntb_hw_intel.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
index 423f9b8fbbcf..3185efeab487 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
@@ -1205,7 +1205,7 @@ int intel_ntb_peer_spad_write(struct ntb_dev *ntb, int pidx, int sidx,
 			       ndev->peer_reg->spad);
 }
 
-static u64 xeon_db_ioread(void __iomem *mmio)
+static u64 xeon_db_ioread(const void __iomem *mmio)
 {
 	return (u64)ioread16(mmio);
 }
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen3.h b/drivers/ntb/hw/intel/ntb_hw_gen3.h
index 2bc5d8356045..dea93989942d 100644
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
index d61fcd91714b..05e2335c9596 100644
--- a/drivers/ntb/hw/intel/ntb_hw_intel.h
+++ b/drivers/ntb/hw/intel/ntb_hw_intel.h
@@ -103,7 +103,7 @@ struct intel_ntb_dev;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200709072837.5869-4-krzk%40kernel.org.

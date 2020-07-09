Return-Path: <linux-ntb+bncBC6JD5V23ENBBPMOTP4AKGQEJIJQVAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E47B2199C2
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jul 2020 09:29:03 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id h5sf1154431pgq.4
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Jul 2020 00:29:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594279742; cv=pass;
        d=google.com; s=arc-20160816;
        b=GO6dg83enjqbaBlJgpNoWBHwNrWetGsSv8SXc+66wkMmjhSO8g6bJoLSta7zIJPzZv
         e+eL5cxjaoA8ZHfKAVaxjeXCsaIpyBKOzqkQJBWzR/nSiapWTYhP+lVPGI4GUhyrG31m
         bYktMaM2kjzkEws9VNl75/aEl8p4clyRXqyV7Z/5+Q0YWqOb7F0ae9GaPw427/CLT1Ap
         QhD2y+dlMfsoX2YkCn4kojyei8rY/Bi7aoB1cVUJfloePvs7EK9nlFKlYDn7K8fiz+kW
         Q8ZIBtY1Nmd6zuY3sODvAbS5uQBL3e6ethsd2H5pTqaZlMzQIwXaaFmNeaKpXZmYPYjn
         hRlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=aUK7JuR99eHOpF/qVK2IKaUMe4LfcmkuYr5kG25KiOM=;
        b=q6KRTo+K43kpErHkB4Zk/0jja/YM5yEGFjqfAnGiCJpsxl+HrL0v3X0fsBtiSzUSxf
         F80HJz6/Yb3iWv39Xq999vj6nqqOTiTt1anIPWeJM704jGoPDiLrNZbnHOykDLlZm2WH
         wgSasQPuh0VAIqeTlhovbfyCqZ/0cngpabeyz1+d3anxNgMAKCbaFBlF+6JBiSkwvmsS
         SWw9Kdl4qH/KYJrJTRqh3GgbwjFVbqa5IRaHMVGDZ5dDoiy/v1yF/xrEv6JlMm/mwIRh
         1E4RYG/SQB2RAcemT8BACAltAto/Cqlj1IYJnFTBr0mfvkOoQT/wEFtEbGVDPjY6T5mc
         m4jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TE+E1myg;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aUK7JuR99eHOpF/qVK2IKaUMe4LfcmkuYr5kG25KiOM=;
        b=Qz/01oaBeDKp78uvPR0gyKJiZGln4KOHcFTWb0tYWJMuxbpzY2Z1i/oxD4RZ/JjYek
         rHLmnqUPLPOTRWtebquLTUVGsZGbHUdjTYALqMk6ZegBpAagY5e8DkbXG/3CQ+VORLIT
         Ya9/2a/MkjfhOSRRwu53+gjfbo7qVYki/djcA7E9EJBo4q3IhtnGahKZrycypnvs91i7
         Dool7Qsv1W6voLGRp1/RnCQG6n/CmKq8Mk22YVGyqsgsYbTaXcJxKipNg6Ncv5ZKloaa
         RnWVGtx/w3KL/Hjp8crGtPu/znOtQxy9y5edLL7lT0nRp3El/MTJ4Lkvzf1EhFDdykhi
         w+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aUK7JuR99eHOpF/qVK2IKaUMe4LfcmkuYr5kG25KiOM=;
        b=N+cDkIVWQl6AmdNyC23LvHhWPZHLb/1sFF/Fx3NBIOiYG+6hA1BwIwFDqOR3XjRnSm
         YsiqGpFudjwIEnPW162P4udRjSmiSp9KDdHX81bgolRg1EwKb9LarpdCYWtUcT4eazb4
         LSQsSzz6JGfvvDOPHn447V2VC+V/aU5ff/hpZRHwLfXHLony5WCMzMpnYBlgvFTzEZsW
         m7yePb1y5VIR26kC/srE379ulssU5jq+nADxlOlrvYYP8woO4DbRefmYfazwe9qecCIl
         Y9f2XlREbPQprUCoTfqSSoke6xvnQUQ8GDN+Drv94ya31nAhgFDEbKXkAeMfbvcS+4VG
         zBjw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531X5iqaqKrx32M2e9vGKVBhTDX2eMTpkxFJfaGakV/tdWwKHhEN
	KiuQC8RJrGRCx+8czfDVc3M=
X-Google-Smtp-Source: ABdhPJzZwedErbYjSHQW610IXkx75rjZW+SoG8IYDshmGCQh0/xwt6zAkz3PolN0KdiGRDZIwCXvdQ==
X-Received: by 2002:aa7:8818:: with SMTP id c24mr53194682pfo.68.1594279742000;
        Thu, 09 Jul 2020 00:29:02 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:46cd:: with SMTP id n13ls1541660pgr.2.gmail; Thu, 09 Jul
 2020 00:29:01 -0700 (PDT)
X-Received: by 2002:aa7:8555:: with SMTP id y21mr41109677pfn.75.1594279741608;
        Thu, 09 Jul 2020 00:29:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594279741; cv=none;
        d=google.com; s=arc-20160816;
        b=qaVdiZUlaD2B6BJ7iTwmXfbW/9m9ImWYZQbnEWci28EWoni/+lpogZ2Kv7z1hi+8Zg
         4g7rZ4pFVEro8Uix+QR5WW9mc4NR73ItjuTwdnBQ4dnHRsfU3OcSioscFBnzj1hhTeh8
         m47Xiun9lZ+lH+ENuIEU+JwMpA8CmEoKKLDJyo4JR3sJW43fUFa2Xr4FJn/UQTRib3pQ
         lyLhZuS7NDae3tkCM68TlfwGOdVnT1bZr3KsSOU16v9yzTLwnYSPBdugjC7VxgPZSwU3
         M8Dul6rxDn5zdR2U57cRM+UsZ9425UFLaR4D9Kp2TDjesirCI6c/KcKfg3x5R/22IZSS
         Jy1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=sUY0HDP/wRPO9R7oOq5XhSZmTv+AGyk8qdjZ8KuiuIc=;
        b=0Z5Ms8e2Yk51zbSl5KJCMs23akQ15ttqWEY3kRrzttxIzSNApABHUritwfWZlotb3Y
         Go+0FvuoRJ6IOIl6WWqzXqFy0WeigsaRIuR3QQ3YI7g7v3fyAm+G5iXqfZsBMWQ98Ea9
         xI16nE88aMD2+2v7cgx+dBoeTb4guOPoWeiX6dW52xum2Eh+E6QczUgNl3pSwJ5h1Gym
         q1w4nAzTcllbjIFsPws9SRbOsvck7WQmoGIhxNT8Wx0lH5tztOhuBxvPMA1wvvJMzlbR
         49JLyWTwzgRcoyvgp0yO3VeRGwtbJ543LViFWik0M+iTKKc0H5NLPf5pNCPCzx9RrNSJ
         9Jsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TE+E1myg;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y9si168361pgv.0.2020.07.09.00.29.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jul 2020 00:29:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kozik-lap.mshome.net (unknown [194.230.155.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 77F3A2076C;
	Thu,  9 Jul 2020 07:28:55 +0000 (UTC)
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
Subject: [PATCH v3 2/4] rtl818x: Constify ioreadX() iomem argument (as in generic implementation)
Date: Thu,  9 Jul 2020 09:28:35 +0200
Message-Id: <20200709072837.5869-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200709072837.5869-1-krzk@kernel.org>
References: <20200709072837.5869-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TE+E1myg;       spf=pass
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
Acked-by: Kalle Valo <kvalo@codeaurora.org>
---
 drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h b/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h
index 7948a2da195a..2ff00800d45b 100644
--- a/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h
+++ b/drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h
@@ -150,17 +150,17 @@ void rtl8180_write_phy(struct ieee80211_hw *dev, u8 addr, u32 data);
 void rtl8180_set_anaparam(struct rtl8180_priv *priv, u32 anaparam);
 void rtl8180_set_anaparam2(struct rtl8180_priv *priv, u32 anaparam2);
 
-static inline u8 rtl818x_ioread8(struct rtl8180_priv *priv, u8 __iomem *addr)
+static inline u8 rtl818x_ioread8(struct rtl8180_priv *priv, const u8 __iomem *addr)
 {
 	return ioread8(addr);
 }
 
-static inline u16 rtl818x_ioread16(struct rtl8180_priv *priv, __le16 __iomem *addr)
+static inline u16 rtl818x_ioread16(struct rtl8180_priv *priv, const __le16 __iomem *addr)
 {
 	return ioread16(addr);
 }
 
-static inline u32 rtl818x_ioread32(struct rtl8180_priv *priv, __le32 __iomem *addr)
+static inline u32 rtl818x_ioread32(struct rtl8180_priv *priv, const __le32 __iomem *addr)
 {
 	return ioread32(addr);
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200709072837.5869-3-krzk%40kernel.org.

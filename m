Return-Path: <linux-ntb+bncBC6JD5V23ENBBSUOTP4AKGQEZT6FXQY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 523882199CC
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jul 2020 09:29:16 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id o15sf1130647pgn.15
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Jul 2020 00:29:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594279755; cv=pass;
        d=google.com; s=arc-20160816;
        b=nw/GxSEkBt74Ao9e2oxrODaFWkcfJPOrrNl3Y+eCbx94Q4WDhd5WAdbkz5U5Izdb8r
         4N5g/eCNmVaIhHkucxeoOXD2BU/9FQYUlEQJt7vVq4/mSJVLIW1uyYK6O1O0ebNHEeeG
         GYVvpY39iej94R4DbF11zfsTVTNaPzWqOVDFqozBWNO1D2JydrLM/SxsKtO5MV9/8rtK
         X1/U9iqDzw5xq6pcPcIoiLdto1rSoWRKXMAnToWUmgBwntLZyFDfE3Jr277tfPqGDzj6
         FSCUAr4hdSlApi+JvkvSlE2uXEHEz9lo6cPaTwzRwbCigcIRRhUqYntv3sJuGAT1aqIO
         2QBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=SRl3nz3g87sBBGVxp4zvlVj5zrRhXfjV2ZjzIDFEMks=;
        b=TwKDjI9x1SnvOttkqVcmGcf6TOfCJ6vuBrsKLvGtxgg+pY5lJEiWu99bT4zf/rFjJc
         n1/QCgAUxbrTpMb0w676vawCD95LZ+LxeEiE1xM+PtMix339aNEf3wdc4D/Lo3SdxATE
         csXfGEshqOiaR+RjlqZc9lby3dq2VjFvH9tZ7bES+EX4+Tz2uDrjKRt391aFz37DZP+s
         O1TMj98IRNdxlz0/sbo2IfaPZ273PcGFyxABl0iFPeRWd2xUM15Nji7mJqLPTo4kBwsF
         E0cTjdZmiJM/vZqRTmax5xOrt2uHVEgwEgXsG+Ciw8bN2IMwC8cuzaBWDNKSTp9ccTKz
         fNjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1Vq5Rv+m;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SRl3nz3g87sBBGVxp4zvlVj5zrRhXfjV2ZjzIDFEMks=;
        b=aBFWvVfdW4gtzcFsVPzv+0zLu6VRp56zG2LG/xc1B63hB1TUlsQBxA5q7rmv9WoQD7
         f2AlrgxZblEpNb0VynZOGbRAdqpTN4gaKFkkNT8aSyDOiNEtHKJoWNi7fa4kn3Xbhh4X
         Bv8TPB4WqgztRfrL+iyj4o2hLNdoRfEPFgjRjk6bVV3xqd3Z7IEmVexE9FcdCnm06tLt
         Le2bhUKogwzAfPObk3Y5Lr6Q87YS7HTpkwh+T2CdgbpivtZa+C89OBYgl0Sjnof0MlS+
         8cQlLV9fh9+D96ah6WzaFU9zAx0GsLW5b4e0bAJzgEJM+bTexTlXG2WKfh62qZIbC5qK
         IkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SRl3nz3g87sBBGVxp4zvlVj5zrRhXfjV2ZjzIDFEMks=;
        b=QE2uP85WxzMRhTY+ZoSEW3cI4Wx2eNJ+nW/qMp6tUFEn/XedxijaS8PrjRkkbpOBGZ
         a2KsznEL/yL+5sWcRX+pk2WoTc5Im0XGuiDYdNzDcSPBFdLE/XHXLr4gucdhrt8liDGB
         VXAPMgp2vE+7+0uFcSrvlkaVJEw7rIaY+hZbPUWwF3X+U1TlPuKc7G+up08YHZyl7211
         AL9ZMBcV3wkoUDntue+9fztRgP9IslUxM6UMKLL7go57CpvatIe0NRYiwlDLp7Oof2pn
         bRVTjhicgVY2wK12PPk1K1CdnbHIpZmRq+K0FlGHz8me/IqR1xKHzJGUotCf5w2tE2RK
         vlFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530jt7fyRyw67XezirECywUMSG3jHedxBrYDNq+zTlzm9bQZ6duz
	gmQ9c2Ffh+aCiZ4Em577+DE=
X-Google-Smtp-Source: ABdhPJwHFx4bbwrJYhGR7o+F+BaI97kH3nINf50oZFlagf+wor6OOCXQE/h665hMD/UtmJ9LgUVrSw==
X-Received: by 2002:aa7:848b:: with SMTP id u11mr42309313pfn.72.1594279754859;
        Thu, 09 Jul 2020 00:29:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls2003796plf.2.gmail; Thu, 09
 Jul 2020 00:29:14 -0700 (PDT)
X-Received: by 2002:a17:902:6904:: with SMTP id j4mr23967729plk.198.1594279754428;
        Thu, 09 Jul 2020 00:29:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594279754; cv=none;
        d=google.com; s=arc-20160816;
        b=dp/jG4fWwjSwONoqzh7EUw+6vbFMG6r4gK89Y0mDtmgYsD/pUsEYc8wGb513UxQieW
         5EAje9dZM7NqECqUAAL4vMI4Kznl63PKyAuqnf0Tmb7F+6IdHYlhLLqEIXUz8BwcGgSS
         p4hZguaDRXM0fFGcfO2opOLU8UiORwzZb7vRekmMzzJQ7/gFHj/fBlUo8XO8tovffKSG
         oh1fcAjHdAC91NAtLXak66cvAQt79R0etkLr8q0yeK3pQr38TRIS/3BznjY6tnYIWTDA
         xVeIYn3a0hIN/6TQhcngdD61tAPjnGbmK1tSsqiriTm88Hosxn2tBmoQ2iSavFhZZzXA
         cY6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=lFrixOQrsMvZB4UCBsk9l5dqAoBdLNPBXCGOEFdRhQ4=;
        b=No6y6eZlzPvblRIQYfPFKxQQTwJuM/mwoCUc2dIwZ2N7yD7d1xoDSb//p+8ImGeYRi
         cHfR5ne4gjG8AtpmraDR6ivv91el90jw4kmzB3NGFtd/cLuGxBLrTIL7kUBWQiJBGHth
         38OrJlzIZfdHrLzeqXsTPKx6rnK7iWjr6IpHIdYAdvchE5pP0eDkq9pbLsIYAx0mfcvx
         ajhVSHs7oWlLrBEkaqOV/+IFO2NBxRT4Zr0VEwuIKxZcyurbxFs4Az1iJ3svf369/Az/
         gZB2/S9ev/MtCHOs9BO28896ACDqzmFtuviLBCrz5kQRHBe7YLzsF8/GAa9FTnUoS0al
         I31w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1Vq5Rv+m;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si168399pgw.3.2020.07.09.00.29.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jul 2020 00:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kozik-lap.mshome.net (unknown [194.230.155.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 50C8120786;
	Thu,  9 Jul 2020 07:29:08 +0000 (UTC)
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
Subject: [PATCH v3 4/4] virtio: pci: Constify ioreadX() iomem argument (as in generic implementation)
Date: Thu,  9 Jul 2020 09:28:37 +0200
Message-Id: <20200709072837.5869-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200709072837.5869-1-krzk@kernel.org>
References: <20200709072837.5869-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1Vq5Rv+m;       spf=pass
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
 drivers/virtio/virtio_pci_modern.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index db93cedd262f..90eff165a719 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -27,16 +27,16 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200709072837.5869-5-krzk%40kernel.org.

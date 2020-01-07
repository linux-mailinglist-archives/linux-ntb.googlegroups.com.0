Return-Path: <linux-ntb+bncBC6JD5V23ENBBDXQ2LYAKGQEWPLZUTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A812132BFD
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:55:44 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id t17sf234261ioi.11
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:55:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416143; cv=pass;
        d=google.com; s=arc-20160816;
        b=ufy4bkDB1lUgZbdgdVf2kjUy5UBVcN+88HfOE6086VNpqkiJyWaoIZWrEPX018BxIJ
         23vt8bV4Xga0JhIyl1rOrPZdzTMsuLJqwDIpVIvAEFoQb7/mtotBEabQ6Nfxxd/bigGj
         KmQ1EybwsN5MGcEPzoL3iZN+E4W2BpFgNgzLvrMQ5dqVHqyPj9TTqYe8mlEO9orXf+1Z
         NRYXrmVCVzWQKzrRgssmnSR491Wv/oCBBeOPLRxcPz2MdY9EAwfH+hTzgc0yaWLR0tPM
         VBY88v6qZ04c6vU1KzWoeDbz9gkdOPOsgKUhUEhVRASTOnHZApyfyhTsltUkxX6WV/ZD
         fZHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=VrVe17KLeKnEYmDcbMGZ73MpDaxoiOschOCbcyJIL8A=;
        b=PngVCSCTXapkw+Q9ahvCff9HIM4QKnWuNLmwdwV/iYrRFnNonT3R8SBUbKL6TS57X7
         NqAJzyS1y2hRbAgVDiYLuIRqKbJguemMmQrABJXpm5r43S4WjQdDUXXhFIKk5x0tPIoM
         95cs9Q2kl2jQxMjpiDDgt8LXYlAYQUW5JSBaidQsYn2sIaixoCdl530NX+LxuMW9wnPv
         wdqg6MbQbFVnbuVog9YgEzH+V12N0olmEA2WGyq/aAYMze4m79Kud/lC9P8iY02Q973M
         UKqxJOTUAFw09nynEGaIvpmnEFXoJr+GpexsUEcHgWt1HzlOPhbUK19oUWkhSJgHIHJm
         vCbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B9XX5z37;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VrVe17KLeKnEYmDcbMGZ73MpDaxoiOschOCbcyJIL8A=;
        b=EL1xII5PmyeOWRoEwij1ARl0TuPszVWQM+QthE/y6mIlpysfqxHY8D0FUi36aoeozx
         9SCp+3cBqxb5ajoyGDFc++ShSzO9lZ0O4yMSMxcjjLKnlUhKtcm61EkxPfUgnUPrzzo9
         LTxqrCAa8aFd18UOfi4aUCzwbMDQB2n8mUPsxFeUIuZZRj7+CQ7RzGdJEGRKgLHh6+jt
         vYkMhBwAd33tXZaQ/grlslHSCSw6Go+f1nr0U6/D+SdiNQcMGfE4G0ypMrdOeFYkIj6s
         TAZ4cDZLW5w7BR8ioFQJ2tUiPREtqK8CKa+H7H6B1EYm75uINpJp8kGz5X+O+f9aY7Nj
         LgdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VrVe17KLeKnEYmDcbMGZ73MpDaxoiOschOCbcyJIL8A=;
        b=BfiefRhyytPS/rw7WqydIxyRxtvOuXf+womVXT3yjPTe6kBBMM4YaEwQ5O5VESqKxp
         vEGY4ESQTCht6ySfxY6+AtyNrmHROX0cBOmU6YWRKxPIA2nNjQFFWnmZ4X+3jp5mlXVD
         sQ39uwAK/bzIr3d+Xfb++9Mpj6LKpdTW3VfsuHxOAoAULciAiWwUNw7c31kAaD7jqmhx
         RMSpq0AHTnVn08QBBzbMaHOxhdQzysqjCoUgAE1iOfVu8nWYoQP3vrn5mPNl3voZ+luT
         mxxR5uPS38wLqQ7nhpWMnbFwasy29ozsUPkR82peLFYqIQlxsXQenOb4Uf7Cuq5zu2hz
         opEA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXuU+mjoD4UzTJYhv/O1VX5dTLb0AFWYmg6GY2UkxrpBJPJbKUi
	3/Ro6MulhntHsAuWd/GDCBQ=
X-Google-Smtp-Source: APXvYqxUbNeJvaiB6X6AJMmXK+4r351eKZ2e7nm7REln8h4OW5GIbWLbt8i9Y1kMRj+TMXPRlzhyTQ==
X-Received: by 2002:a6b:6a02:: with SMTP id x2mr32185794iog.20.1578416142996;
        Tue, 07 Jan 2020 08:55:42 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:ba5b:: with SMTP id o88ls59976ili.2.gmail; Tue, 07 Jan
 2020 08:55:42 -0800 (PST)
X-Received: by 2002:a92:af8e:: with SMTP id v14mr34366ill.150.1578416142718;
        Tue, 07 Jan 2020 08:55:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416142; cv=none;
        d=google.com; s=arc-20160816;
        b=ygKHsbZZei9u+/BCGu45lNIVA9qSpO1BY0nsaZQvHSHTc0jYGbDnP/+9RnFbDV676n
         6U69+2+j0uk5HNWB+4hC4U4yKRkitkYQnzJE08iGkLk6JXZ4kGbuk4sjAu/6lcH6HtCY
         7yTOcDLi4qUS+i0nZwiMFfmYmdNM5NRLpUnQM5kxrq6jkmGF3kih9QKLurJfomcId7Y1
         0ekf2N4cqlfIERVmGAoQ2URgEJkPYT4suqGR+5Zjof3fjyvYVCa3hZ/EBAp0hA4ka+Yo
         6Sehw1mBL4DJxpMAOOzXg8JaXDLXfnkhd/24EG4mVgdKDZ5qIdRnJHATmnAvB0mvSGp/
         gkmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=V+4lEERnwrNrIqExevrIeJQtoizY6WMbW5adTZNxHgI=;
        b=yithcrgfIiY4YYGJeJ7m1Q4kVUZ+YUCjoCefsfRXfyNCNW2LQ1iwxveaSI65ukEQzc
         2rTUnto0weays6RovaZc4lZ1J05U5BuKAmMtrChkX3bR2aZd1Ex/yz9e/pVATL692Quf
         eJ03z8um7zMq2z3HLLmfSaD/chETtxX4yi+eBt0ebwswibi46SdMGEFFsR4ILjNs31LF
         rBuVF9qo7+kaEEZ+Lzo9gQMskQVuC3zgBAQeAW1b/OlYiuYTa+sranvqnKTFI51vLvsT
         F7ah5fJfolKEO8qLtIzjgJ2gf4MpZv8wLdpOIpL8mJnSYugy4CbXAnku5YmotWQCGZyS
         xXAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B9XX5z37;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v6si16696ios.0.2020.01.07.08.55.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:55:42 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4236B2467F;
	Tue,  7 Jan 2020 16:55:34 +0000 (UTC)
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
Subject: [RFT 13/13] virtio: pci: Constify ioreadX() iomem argument (as in generic implementation)
Date: Tue,  7 Jan 2020 17:53:12 +0100
Message-Id: <1578415992-24054-16-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=B9XX5z37;       spf=pass
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
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-16-git-send-email-krzk%40kernel.org.

Return-Path: <linux-ntb+bncBDV2D5O34IDRBHHX773QKGQEIN3544Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D6C214398
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:36 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id z11sf38065499wmg.5
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834396; cv=pass;
        d=google.com; s=arc-20160816;
        b=HsNQcU1jIoSOBh3XcvhXBT9nmRJqFqf7IYPksqeqD6zb+OSckEfVXGH9u5UczuuEFU
         s13zAwVCzx9n6WgzboMCxl6BU+Q5FfAAw065WUwOaQYpIsd3ef/w79qN69NK1zn/odx/
         S2O3Z5vRRnxlETcgFgKpbkZLRtO64PpCzCgukbSuJkYyLuhH9FmKQ2e+plDhlFjlj4Rc
         KKWsNVNV8biaoXzNaQtzFudiiXp2wYv8s/Z/tS28af/K3d9Ve2T30J5felOPS7WKNZTs
         NufUdOKX2svyGdK0xdv4+Xxog5mdgWIBCOK2K9hRcaRqZnHtwCAqSKlSnbpxAPp8yc4D
         YkCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=A6anOETuSlYCGCqTi/h+dV8FlJUhJCx8H1CZjXglONY=;
        b=AAkwRsYoSAHD1+2s9SWbu1wz+7Bs5E9y2g/DHNgzJlaKdAzY/yObRdJYH8j6B59qla
         3migcCcb42wv/Q5iudAMt4VZZhJ+G4hYgALIkpWYYgW9y/IiNb6QCJzsbBfLLqteRG/R
         I6mvtKSHD5QyN782UFpDL6KxGXDQIuSdFItQPkKbmxgzaQyvzdgUR1Ea3vgYALZI90jX
         Lj8xamiHwOds6QJsTb/ilEsEaNYIGTpU2PbPqZ5NHdRVf0l3iyCGyRCu/WFjecGC2iKf
         Xvuve1LkiTMNKjDjERkEEtc8+tyr6/U40FNHY7dUmidrsZplCKIQkWmivOh7LeSdJa9z
         OqxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=b+GvlsX2;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A6anOETuSlYCGCqTi/h+dV8FlJUhJCx8H1CZjXglONY=;
        b=p+oMZAfPdgbTjpymnA9PixxAOnjkXJfXnVQsl/GCKc7kAH9xn6YjgTJElxJnqbp09S
         yTpJf4tzYgcFoLVvN0EYU1k0T91e+XfwMQln0ui2fn4Lrm/KWyXhaqqNVKsZW0rqRh/L
         uIFASbkOajZ7E9a6DNJcV0lze4AKpbkN0jSdn+wmF/W5FVrhuBdBv4t6mwpq+inmlFbS
         ruk5L4nIoewJrr2M30OLo7KzWkNF8Aiz4Tc4ACFznW6jtFmZB/Nu9SdqSsQi/1pAHMG6
         IpLDWtSWhP9xYqebBVZ8NhPYNX/C7eSjhQLxm842a6MeE6U6JidQi/bExDxkSiCxPD2u
         k57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A6anOETuSlYCGCqTi/h+dV8FlJUhJCx8H1CZjXglONY=;
        b=Me024ejBVKAGMlWuSBQcwSWtDHp3lpxcd5gbS8qB6nVOdIflh7gRNsegot67dJC0mM
         cBtfRwANbcMBt5iG06LF39VM0be13MRRYN9y0gD3yqshs62exgOdkx9dyrt3N3s0u5/x
         KIte1/63YwbluWqqZy//QvoaQZFG5ymkuXQMQWBTlBaFBNXHjIMzmFTHm3fMB3SywJsb
         NXXP62nkYVQse2fD4OZGxo3evv6hNab0dp5StVRhTR1lrI7XTG9OC2YbpTb3llq/Mc6t
         MACEskN/K0EqqSNiTeLU8xkASJg+Y7Igyb+raTsZrsVoy/WlC4Ozo0mEK7dDRjyvagF1
         PFkA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533w2sWbb4LeOeDWy447hsI+wsIHGgsMt+cSQy4sxP9gDVxuohnB
	RSQ8wrnR9cY7ode5EGoi8OQ=
X-Google-Smtp-Source: ABdhPJwxd5tYZUQv6T4mVU4cVuap3n/Jy966uj3voYA5Ea74YULweCvCbUSq/zqPwCIboZ38MP4KBw==
X-Received: by 2002:adf:f082:: with SMTP id n2mr41509446wro.326.1593834396066;
        Fri, 03 Jul 2020 20:46:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:2049:: with SMTP id g70ls3229823wmg.0.gmail; Fri, 03 Jul
 2020 20:46:35 -0700 (PDT)
X-Received: by 2002:a1c:6102:: with SMTP id v2mr40573771wmb.6.1593834395685;
        Fri, 03 Jul 2020 20:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834395; cv=none;
        d=google.com; s=arc-20160816;
        b=FUzCxawEfPvS9MPDjgzf/J297Ct0W+m+XRrKUB3hwBITmiLWnJrZXpBw1X5zuaLoQ3
         q2uqfpWQ/fwmQTE6Jt/DKFmOGUJzAzoC03WXYKza42zz2boyzyWqdYkLOKxp5t0P2YlM
         I4Xhob0Bbi09OBGrbaJtqV3IbfJIvLiSq675pRxKGSjffLaiazGwPSITG3ZuW9oXPkaY
         +Z7Z9UZirWscaCW6N2q8QVsYS+DX+qoI40j+5DI8ptfx+VQG7SbunteC4O+6wFPungJa
         op3fWDB+S8NXCvQ5IIcURgSVtPaJFrcATlbVbKv6gY+/RaREAoxoGeA6p7oW2eNfALC3
         WAmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=da/AGHoRkO/K6+XfD+STqPg75KP2M3Vysus0lxWaxjo=;
        b=A2I7g6C99y/YQ195Ps4VNrSnj/rq8dkavv0Z+BFEnWXun4CVvyz5EpxGAr3ALpqbHj
         V/m/e2A1g7Lt+l+m/myJml/gbqp/1gel5sX0b+YLPZgw4K5gZPlz+DCQRoErOziEGe6t
         Wn+4tq/4k1j0B/bP41mfb8fFjVY5qt2srXXCcDXdWBZIMh+VEO4EUjIQDIULg/kMRfLv
         8RrY9a4oVRVzobZhx9+owVCjRlKrezTWu/qndUw7/pMLKM47b8q/dbzp28I5Sp/RhPOH
         XXfL/uLgN6GyfGDxtBBpVxbAG81mdIEi86Ri6bspvbWX6yQRErkDpIBqWgZFYiWLK6vW
         Q8oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=b+GvlsX2;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s18si661926wme.2.2020.07.03.20.46.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ8G-0001Xb-OG; Sat, 04 Jul 2020 03:46:29 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org,
	Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com,
	Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	linux-nvdimm@lists.01.org,
	linux-usb@vger.kernel.org,
	Eli Billauer <eli.billauer@gmail.com>
Subject: [PATCH 15/17] Documentation/driver-api: usb/URB: drop doubled word
Date: Fri,  3 Jul 2020 20:45:00 -0700
Message-Id: <20200704034502.17199-16-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=b+GvlsX2;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

Drop the doubled word "also".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org
---
 Documentation/driver-api/usb/URB.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/usb/URB.rst
+++ linux-next-20200701/Documentation/driver-api/usb/URB.rst
@@ -240,7 +240,7 @@ How to do isochronous (ISO) transfers?
 ======================================
 
 Besides the fields present on a bulk transfer, for ISO, you also
-also have to set ``urb->interval`` to say how often to make transfers; it's
+have to set ``urb->interval`` to say how often to make transfers; it's
 often one per frame (which is once every microframe for highspeed devices).
 The actual interval used will be a power of two that's no bigger than what
 you specify. You can use the :c:func:`usb_fill_int_urb` macro to fill

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-16-rdunlap%40infradead.org.

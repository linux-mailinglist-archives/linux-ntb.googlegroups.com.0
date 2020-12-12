Return-Path: <linux-ntb+bncBDE6RCFOWIARBTNF2D7AKGQEIWQ6HBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7FF2D838E
	for <lists+linux-ntb@lfdr.de>; Sat, 12 Dec 2020 01:46:05 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id w5sf1717858wrl.9
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 16:46:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607733965; cv=pass;
        d=google.com; s=arc-20160816;
        b=tOYRJ8A01s1PmFIsn99b0qg3UTDBywSUbQPquJOQIssgwPPfw/hwjU6KtnvT4K8Tjt
         RQqqjBoiykIwc944c9gAhCOkucg0zF4q8lxLjD8YJBUB2IZ9D3AmBBmheKU4T3lpyOK0
         jZ6YV4fPRd3n87nyTDSaNdxXba1tjzjtiyfpbpfYv/2B/e+BKwhUGsd1UY9I9/57tAuN
         IFqWTwg9tbU3v+vpmhOnXGQvN71D59kHGyaBpwtZEz7M69uipoS+cLJuhLXFRFcvIzqK
         mG2MuhqUsBfXievWeuqalG6fmEqCG1t5mqerYn5oSDyWcZquPrXsODQJ+UXxo4aBYy+x
         HVbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7p/YQje7Ih3JVBewQC00ZSfObLCl+6D2eQDEsNsjOmQ=;
        b=FXfsMJWd7bUPkarntXtMb87XPjBOK2I6Ha3Tb0TF2P6ZEGY/hZXRvh7Y+FCZ6PQoJS
         Ws9ZNyKMgEbZdDN1x5d6aehW9OcSKe1Mu4+niCijIf8LZe+z9kFcIztpCA40/8glyVip
         VZqeeU8sJKHSkn2+5WtJWLXIdbLPhFPXsNw/ZhXoyzF7xkiSGXpjF2q7aAVKF4J1tcTb
         F9xJMzWXC9ccEyYbTVKJKpnzq2+3dXS2KDEyhnZg+uicPRppXiVFVB13WVfZKXI0xE8D
         cJcaorw4PLqi6/EnGzegZ293RGCyor50jeg5uJFkC82PvZQ8i/i8yKlkSxk11Lcodrou
         D6Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vPmJzs+n;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7p/YQje7Ih3JVBewQC00ZSfObLCl+6D2eQDEsNsjOmQ=;
        b=kZYbGnMOKm7OWCuxatRR3iyNSz6Bu6sbDnzO9qV3jlSzjcvVgJLAgATzIBCl8U+4pR
         7un2138rImWgIGbFklAm3eaLrv+aHSIXHA1XMu/bBGBEaJlIr4Bcr5DchWXVcow06Wdw
         WooBppC8PNUr46QJrI6cQHcQiF8lE+dZ6WSnH9f8stQj+QKQRn1w46mtPk7PRP45S+sg
         zczsymUl7wvP4mNQUW62X2TBa+ENK2JmTaSpeOG/v5kdAAikCrBlRl1DLoIxdJSoQpNe
         FM0S5JsrPm9M5arDxT2k5fbNIgl18OoRpOe9epWVM+Yp8RF3Zjn5dLSNQBg8pQarF2B5
         2hxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7p/YQje7Ih3JVBewQC00ZSfObLCl+6D2eQDEsNsjOmQ=;
        b=Ujsd4j1NxToRTDN4kzuUXZ8ihE8HTApXHDNgMTenQHPDdH0pKlfBMT5UNrOkq7lelX
         LbenqLift33pUhX8UPL2xIw6IBOMjAEmMEpTn/qTHR9+VaBpZ5RmhcMtP09dAV+5dG7j
         /Dlhki2qZCrv/1v8G0W6m/opnt+KOYWnXcUxDyYXMNu212/KSP1ZBiySGIPMiZlQA/FP
         3nZnBYie6ByvneTTGZm3znP3JR4Dh5WGaU6mjf7rY/XkNT/Om5MqWAEev6ctoipUVCIO
         FT+epJjd+N0m6Yve6InTzBnjmIEvWiRY8ynAhGSWoqrU1GCuHEyuie3CaRb8y7FHg2DQ
         I5vA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5328jwMyko7rod1D8fyIzTgfpiVZXnswUlu42x0B8ZjoHzppbHxv
	MNBgXetdseG3x0hbqZfwE28=
X-Google-Smtp-Source: ABdhPJx2zYXYibaFnXe52OfD+hf5m8PuPJFQvVbgEE/Cfgflrcg/MOTSW7ZY/2q3UcWPDN+HKkll7Q==
X-Received: by 2002:a5d:6845:: with SMTP id o5mr16427512wrw.421.1607733965737;
        Fri, 11 Dec 2020 16:46:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls5328979wru.1.gmail; Fri, 11 Dec
 2020 16:46:04 -0800 (PST)
X-Received: by 2002:adf:f58f:: with SMTP id f15mr5333085wro.388.1607733964916;
        Fri, 11 Dec 2020 16:46:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607733964; cv=none;
        d=google.com; s=arc-20160816;
        b=Od8obpnCnfwG6bfeCWPn4v5Mu/8ldYyOwCLg6eCANBdD+vLecpJuZ1dY//XuT2vF+F
         mAjhfedK/Q3X/gBYU573/UIwIV7Wwnsm144M+DYooHfY5PAykpcifi9TiL4d6MTxq2mD
         nQnuRIUvy62usltL0d8qQE2E6t5bc4yLBdfc4kNOiJvOuASo2RRrAMDAfm6ntArsh5d7
         ML7OVUV8wXfhr/hPfAebu8+DZvd84aM2rdc2Otjq6y1acR43jtsBooBlytJthdslZZId
         4aetbu6B6sRV3K5o23wzP9BdQhDELvNlMbTQRrH0ACmdjn+gAoIU/5BQhrWo0o6qGMPQ
         lNLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1p8BkEtCdcNBP/TpCqa88TfNrEdwTBnXM61elkmQDlU=;
        b=OJNQ33MufWuljcCg0PGdK5oLLC1tVzKMXM4hDnNd5GhHwyvKs6kXG9dLDUWoMHgU1T
         ljX97/8mhwsQWl9JelAC0jvTlSnD0s1JXcUESD1W7mCzSqMqlkCGAYCb0CrjKjaxV2cj
         qKHE7A3IePaT7E4tZ2o0fY1Fp9y88Fb1KqtLUueduC4YmenRx8c5P55kPkgtJlREGxwA
         i+rIVA9W9QE4NR5lZ9F+fRgag4cHWk7cm2DDoKyRVJQIgA/tlkV16V8q0UdTXlVS/uJN
         F2pkM5KQIFe3OQmHqFPWvI/1ttyaE+xsbCYYZ4YMe9i9/cFni8vvmCDze3xBKoFEeU+P
         WbIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vPmJzs+n;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id 10si404681wml.0.2020.12.11.16.46.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 16:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id m25so15855100lfc.11
        for <linux-ntb@googlegroups.com>; Fri, 11 Dec 2020 16:46:04 -0800 (PST)
X-Received: by 2002:a05:651c:205b:: with SMTP id t27mr2692550ljo.368.1607733964618;
 Fri, 11 Dec 2020 16:46:04 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de> <20201210194044.065003856@linutronix.de>
In-Reply-To: <20201210194044.065003856@linutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 12 Dec 2020 01:45:53 +0100
Message-ID: <CACRpkdbKZzaTq+Am6q38Ya5wuUjiMbLE5g2i8bb_mJEWTkXgCg@mail.gmail.com>
Subject: Re: [patch 15/30] pinctrl: nomadik: Use irq_has_action()
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Marc Zyngier <maz@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
	intel-gfx <intel-gfx@lists.freedesktop.org>, 
	"open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Lee Jones <lee.jones@linaro.org>, 
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Michal Simek <michal.simek@xilinx.com>, linux-pci <linux-pci@vger.kernel.org>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
	Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
	Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, 
	Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vPmJzs+n;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, Dec 10, 2020 at 8:42 PM Thomas Gleixner <tglx@linutronix.de> wrote:

> Let the core code do the fiddling with irq_desc.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-gpio@vger.kernel.org

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose you will funnel this directly to Torvalds, else tell me and
I'll apply it to my tree.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CACRpkdbKZzaTq%2BAm6q38Ya5wuUjiMbLE5g2i8bb_mJEWTkXgCg%40mail.gmail.com.

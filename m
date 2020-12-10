Return-Path: <linux-ntb+bncBDAMN6NI5EERBNXUZH7AKGQETDC6JOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3722D66F5
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:46 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id i23sf2347696lfl.10
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629366; cv=pass;
        d=google.com; s=arc-20160816;
        b=N1dSIf3QpEs41FmHNohPSw3cXhjuUy/QwM5wu5pGODR4JAPb8YpODlhUWpk8QlnCAP
         bO0rJUkh5hWXeKONoxgpv4DjzJo63GiVZLBdM47cBr9g2tZkFo7ayaDx4tq18+RvdhvJ
         Jk5kUsS9cW6O5xA9b/o7aI3Ckvs5ArszIp3Uyp7YGbPadT53HT5owyQXIKqJ+TcJRx4A
         +WNZv7FKPaWz1ZIIUvIb1JoWcWJ85/y7G7Dc89gVFcCbnfGP9aWndJdXXO4sh1ZGOFXE
         KahTb3xqad9Q34ybgniZ/puLxfhPTFeHgicz1k2aEHfRNZ/jJ45p5v2lbWsX178HUEGG
         +1Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=2/7yIU9EJD4Zgl/G1F1+1FZsZ4qWViclWOgkCV7Cq1E=;
        b=QR+NL9Ovo22G77oi8uhZ2KncKVNSoGmkPPkCzwUnotgtEuTsoOwXJv5ywoP6Mpke+V
         YXT4bLGZtYVFDBorPC/OLYKD8Ypx1WPvG5DoX1sc3cSFRiquCNFt2A8Yd2Io282y6F6H
         sCzZP5qSV4MQnX1I+sSgepTz5Uy/tx/ORVuwudN5KsF8D6E/sUYnHZaTZrJ7yyfjfaGU
         avfcP3WgzHE0k/uphhRIhu1fjm9GPfWxP9hrSH21muo2iISY4qsl3nNKTkEyqg6wgKKL
         T3QhU0LtMg/R7tHMaz2Gl4sS3o2N0c+TTeH/LRxZfSNkK+VxQsBIhtBN6d66QS3qVAG6
         R+Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=hVw3OYCT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=TDoY6kDn;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2/7yIU9EJD4Zgl/G1F1+1FZsZ4qWViclWOgkCV7Cq1E=;
        b=JAH9jLdAYEr0IiMv0O/qLRPMCOD+q+1dNqE8E9anHxmSxreThiBjIj4MPJUDuSHR/q
         OEAs7lLbcjdrE2cdYZMlMSXLiFMIncHS9WbozllNNOErxatnnQfLldfAKW2jxUcIDN10
         GHhRsCGtMD69VMmn0OXuMjMMrZi3vtQ/z2jUDvCI22IAnIF8uVvBPpJmZx4spmfB2ja5
         eAi9WN2JyJ6+6f1yR+DdKrtA5Qy9NAgDCNuCWJkGAQQDO5Y8J69OisPVpKlsobs+5yLU
         lRqR0KVVTWpdeQ1L7CZls834M70OiXvCDzLqvLzb15dsYoHyDQcPTPmhq0KXumzwKgxB
         6Pyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2/7yIU9EJD4Zgl/G1F1+1FZsZ4qWViclWOgkCV7Cq1E=;
        b=KLvS8N5OYSLYI7aZkLKluVYBgiCUQlaEYYJTkJEqZnN4QRrIdKJUW1i8emAYo41g8C
         N2foWOuXSOjBoR9BCyYK3Tljwmm6zynkrXgqWHzcNbFDRugCsxYbBu+p6EZXb8uYZDIU
         VapfKKxJBx9mJD+4dgtOC2NclyOniE6NK805OFf7m3k+aBZi30zlaaWKLc3lmeYG33mP
         5HoHnhTRvQ/rqKMEBtELIVTdKu131J9tqKXaZor3vx0QNwLniToUAkm/E4iBWIz62N/J
         435ojjsPzzOtt+Iszr4+WwYs89A9f0ym0MzZ3wV4IqS9LHdcTjk2s7k42avY1UERIMtg
         iIPw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5336e4z52OSlvAMoEkGwI5pneOr49M3XI/1oujC9lnESTVADoXs/
	q0Zm42JxTG707QzLGxr4ses=
X-Google-Smtp-Source: ABdhPJy3HpYRXv/3IbIv4htuH2WNX6XxGowUCthkuaUbf+igwdokELEdABwRWYEklIZZ9DTKRafnHw==
X-Received: by 2002:a05:651c:204e:: with SMTP id t14mr3691690ljo.499.1607629366490;
        Thu, 10 Dec 2020 11:42:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9b9a:: with SMTP id z26ls1230009lji.7.gmail; Thu, 10 Dec
 2020 11:42:45 -0800 (PST)
X-Received: by 2002:a2e:a593:: with SMTP id m19mr3591061ljp.327.1607629365558;
        Thu, 10 Dec 2020 11:42:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629365; cv=none;
        d=google.com; s=arc-20160816;
        b=M/jcBdM/tN1ycZFGynXq/7huQL9S3vppaSJONkVEDdOjsl+FvwSelD7DvUT6HYP3SO
         olM3WgXXLuBdk8QIbRocn6531uxJxGDaSi5/OH6YvLwdQlAwTcD10v7ylhO6qsLlYJGz
         hNBMYNhIOL7CyalkF22Fal4OMTOa0YTd0CDxZBVIgd7sCrK6BERwkLFDRmx7GhD6cGUw
         ECJth6WtQicLoy8edjwmB+YLYiOMYinWotBCe7tBQ6nlsf/6XjRcVXRojPYBQDnc49/H
         vN9FZlFvINq7tU3omWMoE21XW+wjmu3SFz8p+exclnMCO3Wg2d3k/KD1BuxqWSsqyk2V
         +y6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=9YlyTwMk4Mbfk7ZW8GDEykvPqsqe5qocY/DN2nXVexA=;
        b=lvaiMQKc772XBsIL+nCKp8TXbjtiMoFYBvUTHeDSZTv3EcpDcIZ/yxdo6+pUxnzArn
         Ww5Y1wh43HXZCkloEXMBwp6CC3UiC7Z1jjag/XXtGi1f4rVF0/LEDp5YsZoDhb4TmKSC
         aKjJyrsF1rt2cniy3cL84FS2MPzUH1bpnBwxciBeJNCGF8D0Q3rm7F8ggHGjZyppgrIv
         h9+ESaPSQdWrGFtQpk3x3tOKycHVFkRaSuskF7UzGP8Of62n/BT7GcZA8tn2j3CrCydI
         LPKkS/jWJI5hrjrgU11x8gcz5qCMhWW9Ki6v45MeotgUraoijTXGVxugoboP3Hn4ZlT8
         5gqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=hVw3OYCT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=TDoY6kDn;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id v2si163426ljd.5.2020.12.10.11.42.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:45 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194044.972064156@linutronix.de>
Date: Thu, 10 Dec 2020 20:26:00 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>
Subject: [patch 24/30] xen/events: Remove unused bind_evtchn_to_irq_lateeoi()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=hVw3OYCT;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=TDoY6kDn;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: xen-devel@lists.xenproject.org
---
 drivers/xen/events/events_base.c |    6 ------
 1 file changed, 6 deletions(-)

--- a/drivers/xen/events/events_base.c
+++ b/drivers/xen/events/events_base.c
@@ -1132,12 +1132,6 @@ int bind_evtchn_to_irq(evtchn_port_t evt
 }
 EXPORT_SYMBOL_GPL(bind_evtchn_to_irq);
 
-int bind_evtchn_to_irq_lateeoi(evtchn_port_t evtchn)
-{
-	return bind_evtchn_to_irq_chip(evtchn, &xen_lateeoi_chip);
-}
-EXPORT_SYMBOL_GPL(bind_evtchn_to_irq_lateeoi);
-
 static int bind_ipi_to_irq(unsigned int ipi, unsigned int cpu)
 {
 	struct evtchn_bind_ipi bind_ipi;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.972064156%40linutronix.de.

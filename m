Return-Path: <linux-ntb+bncBCFYTA5O7QNRBIUX5H4QKGQE6TDEQEY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B9E2462D4
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:19:31 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id l22sf10097337pjt.8
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:19:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655970; cv=pass;
        d=google.com; s=arc-20160816;
        b=z+CvTbYGlSuNPh8XlF/eNibGnjcnEBzuy0NA/30v47G23836HGbF88QE0UieHmMz1D
         p2eZFTIj08ae6R88SD7jL2BJ83fzlbiyyKFLzMSi6ABaF1HdXrtzPnBVkoLmseH3RApb
         w/FWHFK5vcFuN3wUzugf8kEMxDUjdJi7x5KNEXUBkG/EVAJtv6KaqtW05vN4D6ZRuchX
         KS5LZIa4mUxxZ1PeG1lE9ebk2W+3oSlQ3//9+j8lxKexNLvHM0q7VOhfJiyYAA7D4a6N
         gozTTp1vFuYfhIojM+6uQlNbP1gUuG2NyIXgdkkGL1UdQyGrVJgnBZaMCW+iTU9SUNDC
         qiFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yqC7kqZ/QPcnqZRezWFA/Wcca1KN0XWcfY+XpvKNBQA=;
        b=XVmFUZdqEkEaLropLpc4yp8I/UGf9M0K53qxV395A3RFhPxLwvsYf02PTkQ5Ny4cWz
         BvrMykYhkvF42WGgYrZeC2GbY4m88TiTeGkkO7vGmOoenPZVbmgz9kfdfKXSc/qO5l4J
         VHCEuzPsRk9L03bVHXmV4OZIanQlYHleRgHsWWldnRSvY5pew67FbxSUzKFbFF+hZacu
         Xj39i6eNQ2dp5rN3qok56MjZ1FFq1gqI9M/RWb4pvMl2dQXl9arLKMB0fS4RUF6gU2dr
         xMbBPC1W/8SMpFewzXVklP8yfM7/dASR2bZ/gxpk258Xsi32snHqOimsMBPEKrqjLxWV
         Bv3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QLC6x/O1";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yqC7kqZ/QPcnqZRezWFA/Wcca1KN0XWcfY+XpvKNBQA=;
        b=ABKpPFcPdFktTdIcCHdN50MftRcNoq6SwulS/7+ZyJ31BFrwsULR5zssW5K+yxUVo0
         T/w1HouwPVUfKQbIm4JFdgc74sq8gyCP8nycIkEzw0pxol/WSfaEut2MG6jaLpREis9U
         lEeRgajdsXJs3ikvceBbR5yxdIl2rzyyqMjd338ZuetdJwz8NiKBLOt7EEmo0gWkaylR
         PYQntbKZkcWH6dfmPoXlJd3vIcNtaRxHG9nJOno8v3ygQfih7eAlnRZEej3mJVQezGVd
         ADeVfMys2eweUv3ReMGAwCamahyFiOSLeRXxDM+CdihX4tItBtSR8qpdfW1IdcDkXesJ
         MiqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yqC7kqZ/QPcnqZRezWFA/Wcca1KN0XWcfY+XpvKNBQA=;
        b=Tj3TeFH41DXK+UNFHc592cwTApbUqujK5hwcSW8OzpTYeRTXdg3jiiRtLGZBy+kC+r
         M70fkECWZuWxWtvLfGY5q7l7H5RzwjAJ3x5n7lEVRDa6q5ZcK6hov+EYoeVZSINmQqqX
         iP+YLxo/foqirighOM57HS8IOJb4S/m74HmzZ0zg0cq129TLCkuzAn5sWxeq4UDfdNQi
         s671dM5f9DF33ZlFdhIWCzi2MMT9wb21Su1lGeDuahvMr0CNY9GEw6NTJzNzAPKRAZEG
         dxmFrjDgQVdC1jP8lJX0HkZrXytiSWcpkkyVfaD16c3Y/p4coJI7D7R7sjgxOzmJklUM
         8dJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yqC7kqZ/QPcnqZRezWFA/Wcca1KN0XWcfY+XpvKNBQA=;
        b=kSUOYgqoEs+7A9DFO94PmHXKQW4YhVJMLBTZ2BuKaj8jmjpHzBh/29SRsFKP2Gy11k
         UzJJmVHnEat988QRLveA6e2K3GdwGU0wfdC/1dwoPqIGcbmpwEYu6N3REIFtkF77m1/x
         Ktw3Bn1IW4Q3A9VY5qKOeTPMyNdCodO8o4gJJRk8MtZpFO9FTnY2WwYGz1YNXhrA006q
         8shNDbxL+O3iu/IqHKAhfOurfByFq3/mDWKMCrhpEbpOXFWwf5A18IcDjHKNQtF6Ixwb
         A5AU4sAWiQeZ1qEt2GYfR2uIOfuh1lOyQdZW/ZBccZxR+oQA7G4hnwVOIJ4hZ1sJYqei
         VMfg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533SuS9kfWXm5IevcAqHKU+u7/fT9ziefqJwKBOX9QxvwYrplJ/V
	2sbQTPxzS5S6GvPToMpvQS4=
X-Google-Smtp-Source: ABdhPJzmENCgc5qqgZ/m1Vb215u2PSgxzBEQCKZHMof+t9aLzxptd8y5KW1AQR/Tnnxne6Nj8tZVFA==
X-Received: by 2002:a17:90a:6d26:: with SMTP id z35mr11495332pjj.164.1597655970601;
        Mon, 17 Aug 2020 02:19:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:76c8:: with SMTP id j8ls6720544plt.8.gmail; Mon, 17
 Aug 2020 02:19:30 -0700 (PDT)
X-Received: by 2002:a17:90a:c693:: with SMTP id n19mr12067302pjt.53.1597655970217;
        Mon, 17 Aug 2020 02:19:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655970; cv=none;
        d=google.com; s=arc-20160816;
        b=W1tY+Dc9FGDc5W9rK9OcCo/HbTojWkshxVCRDmZstYsnRqCghvEI++B49Jh8MYr0wV
         XVotvNe5IbVpwekN0fxk0tls24uGbEL51tQoqCBgBXmFZatJx00g4yHCl0PodBWg1X3O
         titgCq8Go68qm/B7S7iGgYkKGlWsav7sVYeHqA3SILVR/E8Av72f+aUuUckqOJW7Ppv0
         /Psmg6wcP2lIYMh7FWrQK7xMHk46afMGv20QkoPHbMxlJ4MSdLEebAr/hB0jDT+duASU
         sPAc0YjT1rCKHEqBLsCbBLRucr177IX6taBIJGE9q1i0dQojtMFgwMSoxF82/gxWkdPE
         rL6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ifLfIrBu1ltO21juvrs7/f94zIPbflxds2FmAIn0JZY=;
        b=BOYmdRJpnAaZYoxLcSf4YflgkvzyB/aSQOMdqWu5mPsgYMSD414C+HPQl4A7Xl/fce
         YX2fhsOkToTZvXbwCG/M5aSxrxxwYtyhvoKAyQBqNnEV8ygPCMAa9CDlSJkiL41J8D84
         7Dw38soTR1DnR4ZTFd59R2iNU4a5I3aZm9Bup8lgh6vTOqqM26A0CC/RHAJvKy+02x2v
         LRtbcsJ2QO15oCyRlnrVdIqzmUCzq2TOiU16Q+EcVrTS5wOS6ZBzegVwoh0cLAjhqc8G
         zw0x8It6w2Mn0KpooAIFDLXm4/Z5XKjgmGzwk/KgMPboEroom+dh/7d1r31c76JiHN4c
         cgoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QLC6x/O1";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id s2si972441pgh.4.2020.08.17.02.19.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:19:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q19so7209883pll.0
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:19:30 -0700 (PDT)
X-Received: by 2002:a17:90a:2210:: with SMTP id c16mr12291145pje.65.1597655969939;
        Mon, 17 Aug 2020 02:19:29 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:19:29 -0700 (PDT)
From: Allen Pais <allen.cryptic@gmail.com>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com,
	3chas3@gmail.com,
	axboe@kernel.dk,
	stefanr@s5r6.in-berlin.de,
	airlied@linux.ie,
	daniel@ffwll.ch,
	sre@kernel.org,
	James.Bottomley@HansenPartnership.com,
	kys@microsoft.com,
	deller@gmx.de,
	dmitry.torokhov@gmail.com,
	jassisinghbrar@gmail.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	maximlevitsky@gmail.com,
	oakad@yahoo.com,
	ulf.hansson@linaro.org,
	mporter@kernel.crashing.org,
	alex.bou9@gmail.com,
	broonie@kernel.org,
	martyn@welchs.me.uk,
	manohar.vanga@gmail.com,
	mitch@sfgoth.com,
	davem@davemloft.net,
	kuba@kernel.org
Cc: keescook@chromium.org,
	linux-um@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
	netdev@vger.kernel.org,
	linux-block@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	linux1394-devel@lists.sourceforge.net,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-hyperv@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org,
	linux-spi@vger.kernel.org,
	devel@driverdev.osuosl.org,
	Allen Pais <allen.lkml@gmail.com>,
	Romain Perier <romain.perier@gmail.com>
Subject: [PATCH 1/2] mailbox: bcm: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:08 +0530
Message-Id: <20200817091617.28119-14-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="QLC6x/O1";       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Allen Pais <allen.lkml@gmail.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/mailbox/bcm-pdc-mailbox.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mailbox/bcm-pdc-mailbox.c b/drivers/mailbox/bcm-pdc-mailbox.c
index 53945ca5d785..5b375985f7b8 100644
--- a/drivers/mailbox/bcm-pdc-mailbox.c
+++ b/drivers/mailbox/bcm-pdc-mailbox.c
@@ -962,9 +962,9 @@ static irqreturn_t pdc_irq_handler(int irq, void *data)
  * a DMA receive interrupt. Reenables the receive interrupt.
  * @data: PDC state structure
  */
-static void pdc_tasklet_cb(unsigned long data)
+static void pdc_tasklet_cb(struct tasklet_struct *t)
 {
-	struct pdc_state *pdcs = (struct pdc_state *)data;
+	struct pdc_state *pdcs = from_tasklet(pdcs, t, rx_tasklet);
 
 	pdc_receive(pdcs);
 
@@ -1589,7 +1589,7 @@ static int pdc_probe(struct platform_device *pdev)
 	pdc_hw_init(pdcs);
 
 	/* Init tasklet for deferred DMA rx processing */
-	tasklet_init(&pdcs->rx_tasklet, pdc_tasklet_cb, (unsigned long)pdcs);
+	tasklet_setup(&pdcs->rx_tasklet, pdc_tasklet_cb);
 
 	err = pdc_interrupts_init(pdcs);
 	if (err)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-14-allen.cryptic%40gmail.com.

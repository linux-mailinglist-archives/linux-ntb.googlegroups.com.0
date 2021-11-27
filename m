Return-Path: <linux-ntb+bncBDAMN6NI5EERB3MQQ2GQMGQEWQP5R4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9532C45F8E6
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:54 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id x6-20020a17090a6c0600b001a724a5696csf5043585pjj.6
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976173; cv=pass;
        d=google.com; s=arc-20160816;
        b=pXp0KEmNemlws/s0RAJVZHLXZumP53lShAWzL8MwrW1ltCzOxJV+wSouGxF1LIkIpB
         QlXBN/rfcBoFNmEo25WxyBTdV6mrYzH7rcX9CXN8pbFB/M2UoP5RBTBwnBCRgoQtb7r2
         OCexWNKEGXzNFUyYA49E+P8gseJcj/grPPjC5l0f/JOGpC+iqJz4/CI1OaQ5zQWbD+8D
         6agpp1Sj1iGyQh2+SdqDKdWjHoIwYQsvqhbZtoUDaQZ0FXhTUjq4fIlnqJ5ADnyY+mYq
         qfC7vh9KQEhYcuMC+nDRYTOMMcRSYp2cUSkVEFeKCzBtpTWIhBPftw6LKqCq8ZIMy5Eb
         /jVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=sy6cP4SC464aZyJiRhKC4HP0JeVfOpiW9My9U4h/HKo=;
        b=RnmUY+p5CRjFsoNbtoQy1WS/+WZnCbEZeIGo060fxCHH9u5qCUllM586fOGvdMNs1z
         lYvHDrDLL17r6y0wOWdtV2OMTqVZE1JX0DUAXm5CFvjCsEMeU91HX9XS5SiV2IRrmdmT
         abtidPhxvVgEnVJyUcPgnJWkQk56BOWdhl3YBbjvFfLmUBFWJSDY9HPz1QVujGrWUaCz
         nqjSbvps8P3FhTFQ0FoBb4euGzkfbr/3iKxoQGxB4D97IQVEgh+YgFR6E0+z0qf1eVgw
         L+D1cUe9OdSQdaOhOsb0V1lFvk6kWy+5Ws/zD5OK+lNRKGYQhwkSFrktrHmTSt+m8MAh
         wRcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=YiFqzeKO;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sy6cP4SC464aZyJiRhKC4HP0JeVfOpiW9My9U4h/HKo=;
        b=TyJSSETsONJFxr+5St8IYYrAabzfC5rVKjPLy2TWc9K8wrCuZh80/3xloFdSLuC+ZQ
         v3HPFXYMT1x61FJ5SKsZqhNsHZHi4vGPJLxhwkdCZ0KogetOwj7HRI1KEryCvwkhGi5h
         HSF4wWelzfMUPIfam6EgW2UUmfijG/NgrkFwCeCny9b40Kj6JjO4E7H2ogMYDExxk9gZ
         QnXbf7wItJ9E+qUDNltlSae+aduFXa+Scw4i3WXi+f1h24oTH3XJ5md3whjmLh4YFcnD
         W/16GjRUtYxjnfBlBKbi2MQ7YjHAKKnalhdJhf93tobwj6e/iGKXRBAws+7VM/EoSsad
         TKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sy6cP4SC464aZyJiRhKC4HP0JeVfOpiW9My9U4h/HKo=;
        b=D0pDU6odl7NoIsUZcNNW3xl2cBjWbPph5pSAtyuNcIaN++QiyZmnJmRdOg4NI3ISYA
         r3MAIVOtE79ItFfVJoS4T2yUS0ZVo7JQUOQ4ekl0gPdzm2j3+APQ1TvuptD13/giZA5K
         16uOwbk50A5PQAt1wXXIJ00KzVk8Irm8q4feD2yBE4niEX5s+F343v6b5ImqG0i1rCcp
         THIane/X1K1pq1IcT3kqJqlbMu0MG3owADcdz665q7aJJDD07Vv1+GZquLy7dHQy9x2s
         YtbahrDnsZbaweSuTCcZhiJPHiPIv6B6S50a5oZEzSyuliU98Q6Y2lrUvDqrAcRcFtHx
         SGWg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532NjJ4dqRy6YT1kGgU5Sc6O3n6I9bP0DkCYbtXepewWEySSpC5L
	BJOi/sV44lGmkvXgNuoZU/o=
X-Google-Smtp-Source: ABdhPJxHTWLrgTzh6zyx/LPBxVWQYKfvrmEswkyzFMaY8CCmCqXzzmnpnpMZl+4jRAOuqcZkhWkFHw==
X-Received: by 2002:a17:90b:50c:: with SMTP id r12mr19716087pjz.71.1637976173310;
        Fri, 26 Nov 2021 17:22:53 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:ff4e:: with SMTP id s14ls1970941pgk.10.gmail; Fri, 26
 Nov 2021 17:22:52 -0800 (PST)
X-Received: by 2002:a63:7c03:: with SMTP id x3mr22968932pgc.394.1637976172752;
        Fri, 26 Nov 2021 17:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976172; cv=none;
        d=google.com; s=arc-20160816;
        b=k/H+bKY7CCRgLQRGuQMcNtCqnTrc29PjWkleYI+c05RjrsGK+5qr372LTEQ4i7CjBU
         iFqTU07lMbj0Zj7YO9+8A7EVdAC451x1QOT4iIsQkkORhUYSGgFbsXG0oaCla0w8U5Yd
         8FsplhXO770N377G5Ib3QicbQS6o9RAOB71hMkdjskzNtAE4qdzvflBPG/DVe8gFtR67
         pWT7GuRaqZvF7uz2mXzkRZlRbCD5h2qUWkuIRfPueDi88BCXTW65Ul2yImubd/xmjDss
         2tybv1aDIDdOYQiAw09+RdJG54/Pq7fz+PbhMzzAGinVqUGIpqlgztS7Ckc5hktl+hzZ
         Zf0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=Zss9mzfScWFeJ2auPATLVX18AC4Qn1uic4NkiF38xfU=;
        b=w5YanyYb1Aw9I0xVBDlaWho4Zlz5wt9MpNPhC4B4e6PQKXA+Kdp04AthvgWJLtgdXx
         BQsQj4/79oLEvwwa9OAORXJovgRC9l20sR7waxLHZI3Bkd2QGy2AMcc5LMd/ckQY/iK2
         POr5LR8ysuJvksKU+utc1jnSNI/JO2Q6YvxeX5X2beGv+ina4i+HiB0L6OCJ73/asSEm
         FVSRYUjGK824KgPo0AoyoQna2Fw0Ps9o6RxBqnyFmTO52fS8MPr1mfktJ9/kkQIm1diA
         GKXlgGPnw/6auouz+qlUuv533d9HvsbdiX/AOUsOoCK5TpRx0ZS2RbXBn/0eoQweZ1ts
         Qn5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=YiFqzeKO;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id l5si781223pfc.2.2021.11.26.17.22.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.188511206@linutronix.de>
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch 15/32] powerpc/4xx/hsta: Rework MSI handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:50 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=YiFqzeKO;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

Replace the about to vanish iterators and make use of the filtering.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/powerpc/platforms/4xx/hsta_msi.c |    7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

--- a/arch/powerpc/platforms/4xx/hsta_msi.c
+++ b/arch/powerpc/platforms/4xx/hsta_msi.c
@@ -47,7 +47,7 @@ static int hsta_setup_msi_irqs(struct pc
 		return -EINVAL;
 	}
 
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		irq = msi_bitmap_alloc_hwirqs(&ppc4xx_hsta_msi.bmp, 1);
 		if (irq < 0) {
 			pr_debug("%s: Failed to allocate msi interrupt\n",
@@ -105,10 +105,7 @@ static void hsta_teardown_msi_irqs(struc
 	struct msi_desc *entry;
 	int irq;
 
-	for_each_pci_msi_entry(entry, dev) {
-		if (!entry->irq)
-			continue;
-
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_ASSOCIATED) {
 		irq = hsta_find_hwirq_offset(entry->irq);
 
 		/* entry->irq should always be in irq_map */

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.188511206%40linutronix.de.

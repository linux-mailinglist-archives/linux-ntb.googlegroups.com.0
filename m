Return-Path: <linux-ntb+bncBDAMN6NI5EERB4EQQ2GQMGQEOYJNCCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E9E45F8E8
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:57 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id e12-20020aa7980c000000b0049fa3fc29d0sf6187494pfl.10
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976176; cv=pass;
        d=google.com; s=arc-20160816;
        b=mkoIs7zZAGMgGcSs7sMgTl92cL2O4mcrPR8Ds3D052h6NAOHlB11ijlSYtYxvJuD3a
         IjiizuhGqy6bAEuCIB2bY0vw1YfrOv75ScU7GoaMQSIPdCb+cbvGSbAhAlDE/2Xq3MPa
         riym3ZcqVGbXYcg9I8w0sW1Uu8iKP5keuJH+1ZBv98QgA37fQmgh+ssHim+hWZQwUGwg
         tiqX2Ucw0UUbvl/oIa8YuK+n43RKyHlKVlqFh3VUj8HkagfbkVYizkbWJJ3Iate6VOIu
         XUCs8NoclJ8iHFmiZLa6kaZXsDMlL+AeyatqrAXSoxcfMKqcPeFbFmsTTBB+0Bk+3BOJ
         rO2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=RP74fLnrY12R6mihINj37WI+3kQkdEJA9AiXBDOck+4=;
        b=IY5pKfoYYLVRdkfILd5ORC0C9wCCz1OSSpHUR2rGqUCfx526hQJgVqWDMHQi6CN1WP
         PWXQeh7D/codFJD8zhYcxcs7PSHmm/23YPzr1tNyJGP01ldOdgTsCqZAxGoO6GhUod+u
         MueBuYkOWNFHfSr2XRDl54iT3Tw6qiJcPupln+q4VPMqKvvvS9UnmvYmEdWm0HDT6MCw
         xdbxCKfDq1HgnPgUtk/zSjsnknMG6gT/uFToZZ9KGMGkMYu3qGLWtRSGZVvU0cu9wOas
         B6r1ykxH1E43GRAHB56XyTOGEJnXoWbNoRQ+Uj9H1k2+qkdpmRzKqEODgvA60quFhBhZ
         wbKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cLRUWibZ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RP74fLnrY12R6mihINj37WI+3kQkdEJA9AiXBDOck+4=;
        b=ZrUXD4zp64aIoLdD6a8zXTp8+zMQnHcg6Nvh/oaAI7pecooRNyo/vhJ0VVJr4eB+8q
         p31kxWxWwwrn90gqZqIemFSSr9kctlt76wqfTsecPtt245QTmokaZ4vPxzG45gm4/XgC
         c+5f3RNLeWMsUlN1foldkrkdiuJjvn6/yYE87DhmE8cn11WScB+qU2y2ye3KR0B0ae+i
         GdgD97Eo89DQUvFcvJ/54xzFdVOh5FNyvvAoz90GMwFNMckAkaag7tkfxS4VrqX0Guw4
         RkUunmhkYhUq4y6Q3eHPkuXz+7fvFHQc0D4ZkrxtftECd8Zrv3FInDx9pT3y3D0Veqya
         m/bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RP74fLnrY12R6mihINj37WI+3kQkdEJA9AiXBDOck+4=;
        b=jGT8NwjTCMeCwIASPUDA4JOK2ebGzlPUcsLpIesHDtvgh+9bZVtqAIinkqKFHNmu7v
         sRtbNdUiHca0/ZtmlUA5ol8PRXUx3tpDzDj7FqbhCOqctgTojXZ3XIqEBm5q4STWZNyl
         WmhvuqnragVBSCUBYQhaD9ZHljCg/2DjXrjNIgAxHiScqQ40019yvVgLj/oJoYmsrcnF
         tr4vc/6C0ncM5jtfJndzfJp91atfHtHB8pG0cDky1ziSQEDiYHbxgRikQq4lca3ctVHq
         AaMPf9hB4nOaNFr4qLr//5p6FARMoGCD1vAvN+VIBCJU0Y2jRm06D3TB/tYkvR0JYsVJ
         7avQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5304ITOBxR+jgRo5A6EXjEAg+3lnvIIONfUyOpDbX67oYpt2Nhbg
	clj8QQcpDx3RniPr42tgzU0=
X-Google-Smtp-Source: ABdhPJxujUHQ+ZmGhatczZAN0306BAYQ2wkpONwfV98JapiLz24l6+ZZYXRiU1DLKW1EaeuYK0yJdQ==
X-Received: by 2002:a17:90b:4f4c:: with SMTP id pj12mr19961894pjb.218.1637976176374;
        Fri, 26 Nov 2021 17:22:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:c40d:: with SMTP id k13ls4157331plk.5.gmail; Fri, 26
 Nov 2021 17:22:55 -0800 (PST)
X-Received: by 2002:a17:902:a509:b0:143:7eb6:c953 with SMTP id s9-20020a170902a50900b001437eb6c953mr42149714plq.4.1637976175882;
        Fri, 26 Nov 2021 17:22:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976175; cv=none;
        d=google.com; s=arc-20160816;
        b=gPkSbXeAZ/iXuZe7cuQP66mkAZITAovCWRLj7OMjwLwOy9x+sRnkp03bbZOUTDc4Yv
         d2musDC9HzqldL7/0+ynkNqAhS91PMjKvSIDG8wPoHuV6QB05sX/ugY0+GKrdHU/4Rhz
         x9mLbzeZB7bZqG36KxfgB3e0WoO1KBaLwDyvw//K7MgvWZKNFYDWbRgPfuVLv6K3EUCc
         lll5eJ2XBWPhOvI1zum3vTei05VRKq5k4oBCJZY4ql33vd4dwc4xOSQKARQAaP3Bv60n
         JCEftF+qI7peiky26ag+UcXL2oiyvjA7a72mw6VY6Smyn+gfoyLc/0tUAMJXBxqDiwap
         k/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=rqnSsBxgLRUZrf8NprfQGM3zrSARm5hvHEZd8TZTvDo=;
        b=EUfD70+w9HAuAbqq3uBtW9UMF7HVBTNE0oI+5tLJir2DWpnRU4IVpHo+a3xZ9JxA91
         Ce4g14eF+eifI+8+LIEZjtEvZ/ND6phSwN/G5S93wY3qSF7RlqPMLHz1b+8FzCj4SMN2
         3KPKyqXn6uNDP2xJnQK2L+RQ5gD22gOx1XMpET+VKia1MGUzNtQH6lxVSAhj8V2pqBFa
         vn6aFau43LcJ3Em0BCuTqeNAjdl1LGIpA8Gglr2MWWMBCHXhc/IhdzJh4APPnDOuOayn
         5A8BoD0rEg62Um0Fe67uXA2MfZhDdzWH+dK8RCA8iEdkIyuVYE7y9YyDMcbLHI2ZGKnb
         +x5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cLRUWibZ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y2si3031390pjp.2.2021.11.26.17.22.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:55 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.309081709@linutronix.de>
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
Subject: [patch 17/32] powerpc/pasemi/msi: Convert to msi_on_each_dec()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:53 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=cLRUWibZ;       dkim=neutral
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
 arch/powerpc/platforms/pasemi/msi.c |    9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

--- a/arch/powerpc/platforms/pasemi/msi.c
+++ b/arch/powerpc/platforms/pasemi/msi.c
@@ -62,17 +62,12 @@ static void pasemi_msi_teardown_msi_irqs
 
 	pr_debug("pasemi_msi_teardown_msi_irqs, pdev %p\n", pdev);
 
-	for_each_pci_msi_entry(entry, pdev) {
-		if (!entry->irq)
-			continue;
-
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		hwirq = virq_to_hw(entry->irq);
 		irq_set_msi_desc(entry->irq, NULL);
 		irq_dispose_mapping(entry->irq);
 		msi_bitmap_free_hwirqs(&msi_mpic->msi_bitmap, hwirq, ALLOC_CHUNK);
 	}
-
-	return;
 }
 
 static int pasemi_msi_setup_msi_irqs(struct pci_dev *pdev, int nvec, int type)
@@ -90,7 +85,7 @@ static int pasemi_msi_setup_msi_irqs(str
 	msg.address_hi = 0;
 	msg.address_lo = PASEMI_MSI_ADDR;
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_NOTASSOCIATED) {
 		/* Allocate 16 interrupts for now, since that's the grouping for
 		 * affinity. This can be changed later if it turns out 32 is too
 		 * few MSIs for someone, but restrictions will apply to how the

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.309081709%40linutronix.de.

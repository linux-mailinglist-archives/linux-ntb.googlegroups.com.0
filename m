Return-Path: <linux-ntb+bncBDJM7EG65MLBBTVVST6QKGQECOKMGPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DB12A9304
	for <lists+linux-ntb@lfdr.de>; Fri,  6 Nov 2020 10:43:43 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id u3sf302940qvb.19
        for <lists+linux-ntb@lfdr.de>; Fri, 06 Nov 2020 01:43:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604655822; cv=pass;
        d=google.com; s=arc-20160816;
        b=CJ5Ffm3XAnOKIgd/Kdygwk8BKqmENlP5vLLaEemKPxpIVYEt7smEAtAPTriPo36mj+
         /gf6w9tf/m1RPZrVYRsq567MxHv2erSLvjoWpuc4GbHMpSdrBURowBTbuIbtwspacag5
         D9hmiXD39r7niSNCMwK0Kzzl1LgzQ7oxtG1Siiu5oTHChv1DerNf1tMSH0gX358acmYQ
         y3Ep3gVDJov6yPPz0z5ua2yefoQfUevTkjE4atUxg52JZ+V6vWsIqzrwS45zl5GUPXAJ
         LVppW8aH4D3r37hM0XEzcyPiMOYMrcDMbYvK9YCZRNmbOvibKcobuhD5ckSuk1oii7z+
         yKgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=eSp9oIWM5Q3gwudIxIOvchHAS504B4G/S48XEEdICwo=;
        b=ePokKmezISMAveZ0FpQq7Ue3tSzBb5Pb8gPhVDPTbP69vSN+puTNNx+7ZP8E/x6/uz
         wx3Sda2vmGwzEtDtEP3ZTAnMtuqBi6JMWzqwYWYF/nUkFuw4cKJIJEpz0VixBUCkvrAf
         dVygJ9W5VWj7WMa1FXjn45kHFHyd+/5gefTV1lPkDnoJ1j/IWmSD9P6CuUgukNOcncbD
         X0MylIN+yt+FB7FbHyfNUBRNLY8tMyc7hbInFedeFx4goEk1J5pAcUZ1Q6auHXTdythn
         AQA4m4ys/hSu8sR8WPyRY6PFxCzaoenwtwtZMjZjV/Bwbdjrawx5+l+TvjzICU2WMIVy
         vfpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wangqing@vivo.com designates 59.111.176.115 as permitted sender) smtp.mailfrom=wangqing@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSp9oIWM5Q3gwudIxIOvchHAS504B4G/S48XEEdICwo=;
        b=ElF8/EvvcsIWHVF+dsfYoSGJ/dAO5SJKMcwBCIRCc0ySRhKJQl16/vybZxfFZ6Jc7b
         XvaXVbYE5lTz4FTY/98/NFhPbvv85hkWsSpieqd22+CvT5L4Ca6Uy4t8QCxrWdLnTyWc
         HnmFXfEwCX3GDn3y57dr6BtC83/QfW+TfYQfLIznaRzOZ/zl4qsfNNyF7k7VAwCUnqI8
         xqRnhiVq38WIddsiNqoubAoLdTXucSQVRZ6ViDpMYfW5w6LCsEQaPBYk8Q7WQRETr03j
         IuBtMvbROfjyCyW+hNFdudWgDlgJQmPZLl71LWKeuUprC0I/S9P64pfD2rf2wKXLHdfB
         TYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eSp9oIWM5Q3gwudIxIOvchHAS504B4G/S48XEEdICwo=;
        b=XSmrzPAGOwvRquXE10g2d8WTumdMMkSGf9O28dug0WOj+1G/UPoYThrkuF/jbtVaKp
         7poCnNK8VZw4g09y8P2r5yB7GQkk4B/D6gmVA7S/AFozJfibIPi6RE9kMmcNY/NkHS79
         DdZ6Q2kXzMWf10S8eiXD9ZkCmUNxFx+mcSSlFdYO6+8ZCffGubWmveZaErxW7niNF3Kb
         MFrIh5EZL7lv4/1joPgTLZUFkCxKlAbgQhobXgprBIw83RZ6mkoEFvXZS8xlTxpnUVNw
         MbwcU6GjOlr1nN+GcIuQ7DjiE9brpKzDSB/U5NLFB/P6ogUjzmZu8YJfZ/GjZ9kwzFX3
         d4qQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ZW9JYcaaMevcpWe7Da1sQbD3IxFA0gBgllx5wQD8zYSYhFTnp
	2PaldbWuEdHe3H7xaXv14nE=
X-Google-Smtp-Source: ABdhPJx/XTPnr+x39qZrfBvnbJNqibbOklt9J+ksezwOE/9oXjvytqMwRaTIqWp+OH6N1W7JWThoQA==
X-Received: by 2002:a37:c441:: with SMTP id h1mr693695qkm.298.1604655822090;
        Fri, 06 Nov 2020 01:43:42 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:a8c5:: with SMTP id h5ls161265qvc.0.gmail; Fri, 06 Nov
 2020 01:43:41 -0800 (PST)
X-Received: by 2002:a05:6214:10c4:: with SMTP id r4mr717828qvs.62.1604655821663;
        Fri, 06 Nov 2020 01:43:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604655821; cv=none;
        d=google.com; s=arc-20160816;
        b=yoprgwfqV/py5YS0Y5eZOdRpbzcfJEalocSt4Q234XtuLNVPeICksersnBdUWVnOXS
         acRtrRNo8qTu2p65YMCvhyRBJGvxN27/XtH74Rr4Oyr4BVDSv60fktp09BpkSOvnEfQu
         6WTt2Gm4inOYjGZbwfYPYOOLCByjPz1uLsq2IvgcNISr1OLYL3i+5N1odbiELTfipJNS
         HlU/YNkz7VGUWELpZcYz/bYJQlJSDBScG5z1a8RQ2MRqIn1ZJ9j8BWl8e2yyhXmkZado
         Fk6cU/Ib0bz2CWlIJYMQDSbv29PmZub4ZpmgYYxxtJD4aTnqMnqRqWPWBHv2Xbkesc5y
         Q2GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=C7KU/8syNl/tDlwyJpqUvnw1GODJ6WQEc/aEieJe3+M=;
        b=Wy+JL0Y34T8x+cmfb41xPRF25bjqcnzC5bDtqATUADMscdAFt7UFDTM/AeOjjucxwZ
         jwlnh03ZtDucM19YxOjvObRVIXLj2WEiXOu4mEkQDwpS6isUSj095i/n/fX7G/7bqLu5
         ASfILaACkLCaqNNdwEDS07KkiT5HZoLJPlo1BDt2YtrDGD/je4iK1xbzR9eSs5N2PiOc
         +zT0J+kM8BjepZlSs0CbUgbcu/nT0ajTJc6FbUcqGc41bzVdMWqlsxBoSMfGK0klqemY
         /wdzDf0twcXuoocOtx2uvyUbjVf94I1W0JW65S6GeCOLMxtL11+1WN9pFx7lkU+n92W0
         RiYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wangqing@vivo.com designates 59.111.176.115 as permitted sender) smtp.mailfrom=wangqing@vivo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=vivo.com
Received: from m176115.mail.qiye.163.com (m176115.mail.qiye.163.com. [59.111.176.115])
        by gmr-mx.google.com with ESMTPS id x21si34297qtx.1.2020.11.06.01.43.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 01:43:41 -0800 (PST)
Received-SPF: pass (google.com: domain of wangqing@vivo.com designates 59.111.176.115 as permitted sender) client-ip=59.111.176.115;
Received: from vivo-HP-ProDesk-680-G4-PCI-MT.vivo.xyz (unknown [58.251.74.231])
	by m176115.mail.qiye.163.com (Hmail) with ESMTPA id D5413665B17;
	Fri,  6 Nov 2020 17:43:36 +0800 (CST)
From: Wang Qing <wangqing@vivo.com>
To: Serge Semin <fancer.lancer@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Wang Qing <wangqing@vivo.com>
Subject: [PATCH] ntb: idt: fix error check in ntb_hw_idt.c
Date: Fri,  6 Nov 2020 17:43:31 +0800
Message-Id: <1604655811-31933-1-git-send-email-wangqing@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
	oVCBIfWUFZGR5NTBoYSh9KTh5CVkpNS09NTk5DSkxJT0hVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWU
	FZT0tIVUpKS0hKQ1VLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NyI6Hgw4Mj8jQhw4AxEvMw1K
	FhIaFCNVSlVKTUtPTU5OQ0pMTE9LVTMWGhIXVQwaFRwKEhUcOw0SDRRVGBQWRVlXWRILWUFZTkNV
	SU5KVUxPVUlISllXWQgBWUFKQk9DNwY+
X-HM-Tid: 0a759cf0a1a49373kuwsd5413665b17
X-Original-Sender: wangqing@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wangqing@vivo.com designates 59.111.176.115 as
 permitted sender) smtp.mailfrom=wangqing@vivo.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=vivo.com
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

idt_create_dev never return NULL and fix smatch warning.

Signed-off-by: Wang Qing <wangqing@vivo.com>
---
 drivers/ntb/hw/idt/ntb_hw_idt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
index d54261f..e7a4c2a
--- a/drivers/ntb/hw/idt/ntb_hw_idt.c
+++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
@@ -2511,7 +2511,7 @@ static int idt_init_dbgfs(struct idt_ntb_dev *ndev)
 	/* If the top directory is not created then do nothing */
 	if (IS_ERR_OR_NULL(dbgfs_topdir)) {
 		dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
-		return PTR_ERR(dbgfs_topdir);
+		return PTR_ERR_OR_ZERO(dbgfs_topdir);
 	}
 
 	/* Create the info file node */
@@ -2756,7 +2756,7 @@ static int idt_pci_probe(struct pci_dev *pdev,
 
 	/* Allocate the memory for IDT NTB device data */
 	ndev = idt_create_dev(pdev, id);
-	if (IS_ERR_OR_NULL(ndev))
+	if (IS_ERR(ndev))
 		return PTR_ERR(ndev);
 
 	/* Initialize the basic PCI subsystem of the device */
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1604655811-31933-1-git-send-email-wangqing%40vivo.com.

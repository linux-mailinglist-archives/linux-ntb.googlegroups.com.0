Return-Path: <linux-ntb+bncBDAMN6NI5EERB2UQQ2GQMGQEKTLA6OA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F8345F8E4
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:51 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id e12-20020aa7980c000000b0049fa3fc29d0sf6187358pfl.10
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976170; cv=pass;
        d=google.com; s=arc-20160816;
        b=cnHd2jlVVe1XfSy9dHrnXqwJKCT7dWx7fBq0+BQyhcisqf7kv+3pmXCOg26xGxIywt
         ygEfqazh058wx0x5FmspbcLt1r4e0rPQgFjyJe9X9P6wwOlup5vTmuwY4OaNqNVkKNR3
         rzQ1Q/lnHQ0g7EAxW6LpH9zEwn7xj77EAAmA3lWMUG6FoiXvk2GvzL5O7IhjhPZbsQLX
         b7s5WKBGR5DImNfPPXlwJgzOQqToj93mgB9bszrc6roKXZUjbipOoxuGE5ZwkqCSxMP3
         FuOI+dDSPZlhxHeCXxyo68CZ3QBDLIUVYuvtQIrz8Zt9KmnZ/JhUo3Cpijo/p+Ydedwy
         +Ftw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=vFwvBjRSQOkAiEBAz/q774JA9KFB9tO0+OewsfWoa2c=;
        b=CIiQcf9cLrLCo4fvEOwAZnvtgqXakzOmFI3kaWGdfhpjQ5bXnzdomLCWq7Uhvt/I8x
         ett9a/LNKNX888rDzDin0D0ds99tqHREicWH+GZY69GCbN0OQNivN7SjfgVLYzB8xOa+
         YInwRhDzlXBreqYsmzLZdxY+GlZTB+avzuKUY9XENs3WsoUVOQLZ357RN3/Ymm7xh/Cw
         0XK17yCtXi7JY65r8e/M8GH333S0lsrb13sQ8zdfW0iBCnL7AO/AWaDfhpQpfYyIW8IU
         96TvBcm/K0rOKquSHXMDuiKvpYUdNXvT6MP4xXj0lJKnBAuimnH6MwmxJayFZ9MChLsY
         Wwkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eqjntOCO;
       dkim=neutral (no key) header.i=@linutronix.de header.b=lOyQMMrT;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFwvBjRSQOkAiEBAz/q774JA9KFB9tO0+OewsfWoa2c=;
        b=qncyyOKLppy3fx1GdortVmuRueJ5gVCPWblIN4abUkAin1l4ciohTKXpDaR/vm7lN6
         LH3K43zIkglELCuQ7XutHd+8UvVvV6bD8gdhp2uOMcqB1hFoTWNrRBEnj1XSnA/iGSY6
         yBH+fPLHw9BC3J/eGv5HVwGhia2IXvLpJzja56MTfpXW8ZdlXTORT03qknQ/WmJvnife
         H4JzNNZkm8XvPUvTBxKLUsbBR/Oer26ee/muoDCUC2e4hyhe2+8pcb3hxw90Zj5DgcdK
         ZBjV3503CNQtF3754TMlS9DeHzcUwPNtuWQ4GTzH3U9GtB+e0YfEkkjFGXNkWER9CinC
         itig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFwvBjRSQOkAiEBAz/q774JA9KFB9tO0+OewsfWoa2c=;
        b=M4LUJ7qZtfl8dJ1OQ+8GvLkQB8tAGLgsvOfB7tN1AyH7DRnPfNAIuH4JIqt0+r0ve9
         KdLgZescUU1PJNeXrJy++nBab3H4x5AEuWWtI5JoPM58+WHqkFLpNiaiAoy8EbPaS6s3
         91lqBtzdlxklmvSVmYI6ViPAVWWH9I18vu/T8AWEOV5i+krJSl8JRoxKnhhzK1sN3NgP
         Ki4I5osIf6khaNykzs7w+XTvsLv2whbT09PgDlUoUh4ESXGnMeJI4AihPQcQQAiIn9Tc
         gzT6mPrpBVH1G7JTQLVXBYzLcQHVHPxVOl00y/B5TRpaDFKQkzeegIk0tbhjgwn4NlUt
         PU6Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533TlCnhYYufggX6/fuGBDCHdfkwrW+iSe3HSDlsQqzOI3JnSVpa
	j9awGEn2GuzWy5VQPSxM4/0=
X-Google-Smtp-Source: ABdhPJz6yzdNdBHoQCI50n1kiYVUkxw5wgWyH2Y+LGS11ptsdFsz7NTzhYylPknGh0JVQ7Lms9zyPA==
X-Received: by 2002:a63:8149:: with SMTP id t70mr13863988pgd.2.1637976170435;
        Fri, 26 Nov 2021 17:22:50 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:32cf:: with SMTP id i15ls4165532plr.2.gmail; Fri, 26
 Nov 2021 17:22:49 -0800 (PST)
X-Received: by 2002:a17:90b:1643:: with SMTP id il3mr19315946pjb.182.1637976169699;
        Fri, 26 Nov 2021 17:22:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976169; cv=none;
        d=google.com; s=arc-20160816;
        b=Gfq6ZULr5ZpfilBmKkAB+lODTHAuXF7Pv15K1sjk5r7lyy3+auOodQ4jy6GRZM4cee
         cDDl2mvvo8e4E4cUvpIT5/3SJkIANm/pL32FfpB/KAUg8cafFksYBVjwk1iXnljRyKJd
         a539VNmBlFyb1N2HYMutRWgltmjalnwuqqXoowJBquMjEfTcHimb2jv0IUbsid5zV5JT
         Uxg12ehGJeqUImgZfPD5T7kYSn0RuJGVc3TJeAQk3+WVdGuW1XEufi5WuRC87s82vO+X
         aIDkeUfGKhQddgJrrWX4+Q9uJud7m+Nq64SkTGH/9PICINNY1CNdacqGyHiB2mWQIuCB
         P/jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=JXvHU/eN0iJfDqMWbOd2UGXYgpl11UY148yTUdaqnAk=;
        b=HPDKdADzQ3GEQNC097h7WngWSjWTePkf9EV0ht/ltIV7E7JQz4Mz8DGSQ2jvSrj8iL
         Lje9vekqFfDVQaZaSsoEi7UoVLely9YgZhHGYsmrIcVtGnNowgbGKavQM0dnMbEbZm5Y
         /czT5DPOFgaqjDVQkOVGmoI9D2ODWFMQrPrfD+wZ3pC0YmsdvWEp2wn7GCjHdR3z56qr
         IZjP5S2JQUnO6RXKjM0ekJZfpqVyDj5UXOhCj4zASd2njyxLS8N0ySLKraYwa87tf33g
         VlC3C1PZ8wN7tiKGhqyyNEVQC3B8PeAnlUbVBsJfP9ITbcsCIrnX1uQrghs9zQOr30dY
         BAhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eqjntOCO;
       dkim=neutral (no key) header.i=@linutronix.de header.b=lOyQMMrT;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id mq9si1768532pjb.3.2021.11.26.17.22.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:49 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.069709622@linutronix.de>
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
Subject: [patch 13/32] xen/pcifront: Rework MSI handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:47 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=eqjntOCO;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=lOyQMMrT;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Replace the about to vanish iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/xen-pcifront.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/pci/xen-pcifront.c
+++ b/drivers/pci/xen-pcifront.c
@@ -262,7 +262,7 @@ static int pci_frontend_enable_msix(stru
 	}
 
 	i = 0;
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		op.msix_entries[i].entry = entry->msi_index;
 		/* Vector is useless at this point. */
 		op.msix_entries[i].vector = -1;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.069709622%40linutronix.de.

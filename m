Return-Path: <linux-ntb+bncBDIZTUWNWICRBRNEZP7QKGQEORCBILQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4982E91BF
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 09:31:03 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id o19sf11724915pjr.8
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 00:31:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609749062; cv=pass;
        d=google.com; s=arc-20160816;
        b=a19kQlbWgmT0iiIlKG/7FdEjJOPblVzf/xQuv25LRKVGP20hHIFvet9Fx0m5wCs0T9
         aI3K6/QruxFMHYebBaOD3vslh2qtKwcfToks/uCtQ5sGTWkrYVBDqUhj5QLGDKLFUyBM
         Hc6O1z3FhAJ4xWu1D8XBK7hsvJ476sN6tqrYWYD6cuRHtsfHaXCV48e/KKpdkreCphhI
         gw7Y54LuW4uoqLENFZrQLYaqb0n51zeKptg4MggtmaIGWNqMj2Bqg0pYAAdQoJ1K29hM
         Y3gAo1jsfKipVEU4YNaZQlqic/dD7fVv8IvOOyj90srhCn7xExjUQML4wfbsN2wOywZ0
         LIWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=tlWKl8uVArT2pmgpEpMwv67dWFeIv5GQ8EUj5hotst4=;
        b=AY0fcUzHNl/yHGTuF6DQKAuGmKcXAAgVbQIMbX6DVPVaO7U/cAIxpP3jSlNs5Mq1gE
         N1UNRwAU1oaNEVNhk+6lbmO+7ppJjVZ5JcroBPn+pJXuxLAFj1LQpFCmk0BQDEZ5r9bQ
         2eiUrBBntie18WLvwaBzzISH/PLV+l/3rbOWBy+n/1sG1NgsefjScIMMaNRkR387Y7bn
         ddJEJGdycXsOVb6hVyAlVjik+d8/CIo2MQarQUEqNQlBloyP7+zaTztOGYvO1C0XoUbk
         12bZgNQg9lvZxESmFE2Z1AV6cflE0Hdj0elNCx5EBSgUggFPNFAEzPUYl1qlLP0Q60YJ
         bxsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="LFp/dCsi";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tlWKl8uVArT2pmgpEpMwv67dWFeIv5GQ8EUj5hotst4=;
        b=QIiUAjRhmXWUIp75RGoCTl+fuGjFIxiS6bI9I3sQ33/RH0/n38GxzuE8N42Qn+OcBV
         TkYNp43/No7VUx1uv9rRCeC/HcUqGrXeX3ayJAa9eic/wvrflWS1AEdmwKHwYyYJcctT
         sD+x0+hLheXbS7EzFAcmv1ezyl43EYoHMtKWo/964fgzXSlkIJC3YHozKtxQjDifLHri
         nqE/JV5KK0ymn4af8kbc1n5lYAPo8AUwECHX1+BsRNnwx8Ck13HiK40lACweo8iLBpa4
         r4C9vh2rHPKOj+y3x+Frf58ZqU92tp39sOfWC51iq2Y878B/z+gD/Iq3pzaZSZs1/QDj
         OCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tlWKl8uVArT2pmgpEpMwv67dWFeIv5GQ8EUj5hotst4=;
        b=WzfHJ/rDwRZduZTyd8sPhK/U+93wUkmpUAAEKLpkqHCSRhJG0xqu1SgegBn3UzK1al
         KY32Oh8f/2jVQiD1F8qAHZ1ML5QqciQuKNOVen7tbiUv6fDRLY0sCZY+zhSQLIZvkh+J
         8JBMF8OBVe3iYb5obEh0IZUYjFempGvsun2DYnn110jVWOQ1el8oHZ53qIX2rPYyUYnb
         RpGU3pYSs5l653krK29/FPJ/OYYYOcsLdQq7scX6wqEhfrci4rDbWYIiRI1QnuO1emPN
         H5Ic3d4Dgfmm6dHT+jlwafuhE41LOXH3RpKqZmHSAGcijYJVNzrqCR6YGIgy3wlaU35x
         lANQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530UEk299PxWj2yIlbcEYKC7wj5r4nGqQ+CtwrVhaCn9FdSM2r2j
	sYk6FAkKKmikhxNDqL3nDzw=
X-Google-Smtp-Source: ABdhPJwBYFNQZgfBTzqaXOleJSyz7kP/CGP+YrgOsqaHRQc696K+hV/VHPNvLZamCB4qlm7HaVfhWQ==
X-Received: by 2002:a63:d74a:: with SMTP id w10mr57714734pgi.134.1609749061842;
        Mon, 04 Jan 2021 00:31:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls9224502pjh.1.gmail; Mon, 04
 Jan 2021 00:31:01 -0800 (PST)
X-Received: by 2002:a17:90a:b296:: with SMTP id c22mr29533657pjr.142.1609749061243;
        Mon, 04 Jan 2021 00:31:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609749061; cv=none;
        d=google.com; s=arc-20160816;
        b=NqkN6CMcnpxAK0l+s07DYGOCbR9hipus34BgkJDucEuYa3MpQmNMbNi9JAfKPhpDxH
         GQzyXbhgSZjqpBcOlh40cwx3daCPFsHQvlZmCbso9DcUiubPMFj7O22s2IFTFE8HjtDm
         l8myJtigSG4EnIOCpFXreI++uCaVLWeBJCV/bkNWuhMDe84v/FkMr9rb6M9QIFfDppqJ
         B7j3HrO3WRpBa44owFy0/NZRSnxnUEXmUibavtSnIAlwp0LGgIot8C5mfftvVKW7ZYAa
         GZtJcc60AWOar//MT1nFiYRauNb4kkapNPlHhUQ19zNzMm7/yq6jbQDsbrxYJHAfzS62
         Y4iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nR2Q7mSO/Dz42tv8kKe3uN9e9+5MG7ulgrtXzjXMFLM=;
        b=Io3pdBTjoOTXPk35zVEgPk7MYLVphAu7YovhDkxEpYInm7vIRaecK2EM6OQk0pwF2u
         tFmr0dXEw7ftsVEezrtpOykj8HyoukMvUtFYzNXxq7nn1CBzbB0wJPAJDRV6Ewkkj9gL
         bxgAeHF2zOiTOAK7xABL8iXkSrncX8zvS+AT/ruGbgkMb4awW9Z+FfqpXw9aw7QIqX/Y
         ZQXiCmNUQHEu4EK8isIT32zCURbbg+WGwmDIo+usojiQmehNI+LJjgKbPsivB63YjIux
         9Cg3hWslU4hEWQAaZ2K2M9fsNphVGT91mgQ8um4tOSgyaWUa3IPrzc7ZP1kqKSuA9++r
         D51A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="LFp/dCsi";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id mt17si1515572pjb.0.2021.01.04.00.31.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 00:31:01 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1048P1eH110632;
	Mon, 4 Jan 2021 08:30:59 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2130.oracle.com with ESMTP id 35tebak8sa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 04 Jan 2021 08:30:59 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1048RJ9D186971;
	Mon, 4 Jan 2021 08:30:59 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 35uwsyucq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 04 Jan 2021 08:30:59 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 1048UwkR002047;
	Mon, 4 Jan 2021 08:30:58 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 04 Jan 2021 08:30:07 +0000
Date: Mon, 4 Jan 2021 11:29:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Jon Mason <jdmason@kudzu.us>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-ntb@googlegroups.com
Subject: Re: [GIT PULL] NTB bug fixes for v5.11
Message-ID: <20210104082948.GR2831@kadam>
References: <20201227141638.GA11393@athena.kudzu.us>
 <CAHk-=wjxQzF3eWank1r7F6+EqSRsO+kvibPqDbzxjHv3wzZt0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wjxQzF3eWank1r7F6+EqSRsO+kvibPqDbzxjHv3wzZt0A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9853 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 suspectscore=0 mlxscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101040056
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9853 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 priorityscore=1501 spamscore=0 mlxscore=0 clxscore=1011 bulkscore=0
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101040056
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="LFp/dCsi";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Sun, Dec 27, 2020 at 09:38:23AM -0800, Linus Torvalds wrote:
> On Sun, Dec 27, 2020 at 6:16 AM Jon Mason <jdmason@kudzu.us> wrote:
> >
> > Wang Qing (1):
> >       ntb: idt: fix error check in ntb_hw_idt.c
> 
> So this patch seems to be at least partially triggered by a smatch
> warning that is a bit questionable.
> 
> This part:
> 
>      if (IS_ERR_OR_NULL(dbgfs_topdir)) {
>          dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
> -        return PTR_ERR(dbgfs_topdir);
> +        return PTR_ERR_OR_ZERO(dbgfs_topdir);
>      }
> 
> works, but is very non-optimal and unnecessary.
> 
> The thing is, "PTR_ERR()" works just fine on a IS_ERR_OR_NULL pointer.
> It doesn't work on a _regular_ non-NULL and non-ERR pointer, and will
> return random garbage for those. But if you've tested for
> IS_ERR_OR_NULL(), then a regular PTR_ERR() is already fine.
> 
> And PTR_ERR_OR_ZERO() potentially generates an extraneous pointless
> tests against zero (to check for the ERR case).
> 
> A compiler may be able to notice that the PTR_ERR_OR_ZERO() is
> unnecessary and remove it (because of the IS_ERR_OR_NULL() checks),
> but in general we should assume compilers are "not stupid" rather than
> "really smart".
> 
> So while this patch isn't _wrong_, and I've already pulled it, the
> fact that apparently some smatch test triggers these pointless and
> potentially expensive patches is not a good idea.
> 
> I'm not sure what the smatch tests should be (NULL turns to 0, which
> may be confusing), but I'm cc'ing Dan in case he has ideas.
>

The most common bug that this check finds is the other part of that same
commit 91b8246de859 ("ntb: idt: fix error check in ntb_hw_idt.c"):

 	/* Allocate the memory for IDT NTB device data */
 	ndev = idt_create_dev(pdev, id);
-	if (IS_ERR_OR_NULL(ndev))
+	if (IS_ERR(ndev))
 		return PTR_ERR(ndev);

idt_create_dev() never returns NULL, but if it did then we don't want
to return success.

For the debugfs stuff, the caller doesn't check the return value anyway.
Just make it a void function.  A lot of this debugfs code could be
simplified.  It's not a bug to pass an error pointer or a NULL dbgfs_topdir
pointer to debugfs_create_file().  There isn't any benefit in checking
debugfs_initialized().

diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
index e7a4c2aa8baa..710c17b2a923 100644
--- a/drivers/ntb/hw/idt/ntb_hw_idt.c
+++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
@@ -2504,28 +2504,14 @@ static ssize_t idt_dbgfs_info_read(struct file *filp, char __user *ubuf,
  *
  * Return: zero on success, otherwise a negative error number.
  */
-static int idt_init_dbgfs(struct idt_ntb_dev *ndev)
+static void idt_init_dbgfs(struct idt_ntb_dev *ndev)
 {
 	char devname[64];
 
-	/* If the top directory is not created then do nothing */
-	if (IS_ERR_OR_NULL(dbgfs_topdir)) {
-		dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
-		return PTR_ERR_OR_ZERO(dbgfs_topdir);
-	}
-
 	/* Create the info file node */
 	snprintf(devname, 64, "info:%s", pci_name(ndev->ntb.pdev));
 	ndev->dbgfs_info = debugfs_create_file(devname, 0400, dbgfs_topdir,
-		ndev, &idt_dbgfs_info_ops);
-	if (IS_ERR(ndev->dbgfs_info)) {
-		dev_dbg(&ndev->ntb.pdev->dev, "Failed to create DebugFS node");
-		return PTR_ERR(ndev->dbgfs_info);
-	}
-
-	dev_dbg(&ndev->ntb.pdev->dev, "NTB device DebugFS node created");
-
-	return 0;
+					       ndev, &idt_dbgfs_info_ops);
 }
 
 /*
@@ -2792,7 +2778,7 @@ static int idt_pci_probe(struct pci_dev *pdev,
 		goto err_deinit_isr;
 
 	/* Initialize DebugFS info node */
-	(void)idt_init_dbgfs(ndev);
+	idt_init_dbgfs(ndev);
 
 	/* IDT PCIe-switch NTB driver is finally initialized */
 	dev_info(&pdev->dev, "IDT NTB device is ready");
@@ -2904,9 +2890,7 @@ static int __init idt_pci_driver_init(void)
 {
 	pr_info("%s %s\n", NTB_DESC, NTB_VER);
 
-	/* Create the top DebugFS directory if the FS is initialized */
-	if (debugfs_initialized())
-		dbgfs_topdir = debugfs_create_dir(KBUILD_MODNAME, NULL);
+	dbgfs_topdir = debugfs_create_dir(KBUILD_MODNAME, NULL);
 
 	/* Register the NTB hardware driver to handle the PCI device */
 	return pci_register_driver(&idt_pci_driver);
-- 
2.29.2


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104082948.GR2831%40kadam.

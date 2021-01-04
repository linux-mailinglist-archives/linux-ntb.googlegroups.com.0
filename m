Return-Path: <linux-ntb+bncBCS4BDN7YUCRBOHOZT7QKGQE7VJG3JA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 401E62E9901
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:41:45 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id l191sf17986795ooc.15
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:41:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774904; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZqB+q8h9s4VAvwamm6Okhd5upENShW9KJIL6RSA4JO14Pl8OLBRisuQJjHHRs/ZaGD
         33BYUtBxg8d/HENtxAnWX8lKHLVoLgnvapbNmEP1WDdcjsbSmWVBlTgQJnyJ/LNMtXsB
         D1MekiQM0bVF8fH1x1f4fHSSwXXtAh38tBmsL1Am6ULFjhPydg/j5mJ/yr5BwTwwRQUp
         ZOefeDkoijrar0xp3B/1/RxtdvYshgimV/7GaQy4y6ZFhSaVAHuEGldLWCMD89acYqm1
         Jg72K7DjLFwcu3RIaX494a/XNAKYAMjs5kWRCxSRfzQ/J5FN2oa/OOBwchY+ifWvfNqr
         kt/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4TaMaioaxaHVOSij97/JFCxkXWz/zx9izBxeaBlKwWM=;
        b=fAZ/EPKq5lkiV2hMcgZWNkC0DS5k+OOGrGE1cK2e7DZ4jwzTXQznmXYsyqu4dVgDvX
         lOIhUnIgZJmHfO6FVOJs5Gxy8gnwzPtDFO9ABLxkORfIr1NaIg+RtgRLEhNirEadLokX
         BYxpYt4Z/png76fJLdfZxg+qG40lgzbUlxM9Fsn4qNY0gm1dCZ87vfj/xhYVV1Ac3gei
         d4jMHZFd1fgka2yOxAw7m9NzTgJfKprAIweKfAYER3OTCAgU9hcyitEgYBPdGtnfFSlB
         NfuzqPi2wuJ3ikF4iOVjA0KZpbYT411US5VmUwU8M66TKZ3f7hZTf09UpXPaYyvhnOjI
         Jftw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=mEe5zpAj;
       spf=neutral (google.com: 2607:f8b0:4864:20::12d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TaMaioaxaHVOSij97/JFCxkXWz/zx9izBxeaBlKwWM=;
        b=hww/PNKd0ZGc701tKPUsCmKQcdKehhd5n3CjJdT224GS9XO3e3+iQKQ+6smoEI5BVg
         wgGQ9ai2VPFhNkjBfD1K3Ib8t+gYxpjX7d2/fT7Ju7ABDWpe8WLzgvaeYPeBCBsxN9Pe
         Kf0upqmU8IrvvHsmdAys7iw57HoZXy3OzIxnYz7HDbMM3Z+aCpIIoUOpbxmPMY/Jeswn
         Vt5YIaeCb5C/ckdns9fIAnc8bBTJ1S9HPRRob3a2rGYoWEYQ72sp2qlhUe18NBcZlNlM
         6JbtpmIbR97ludy7NRWwcmOCEWx+SMXlmNOtM49ExdAWtti+9MhukvQCO7eNPCmYHreZ
         9fGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TaMaioaxaHVOSij97/JFCxkXWz/zx9izBxeaBlKwWM=;
        b=CGNCutnK2opG4WGiI27K4lEEFpoa89lIwA8Ftez89f2EcScK9NmgPfsWoHZ2HQpZE7
         01IQWWf3L2kdniYbvz4FURcYiDoZzAUD/1kEbrQ2Fkd6e7dM5GrtizYAtzPSfgGyXBLw
         VzyhMbdcANrAE+K7rA0i4HR/IZXN/2LU5vSbetb71rtzuJPxqCvE1Tz9nUh3QGfW1hYN
         aVmdR/zoAAMgq34ng6uxYRPzXF9FUbRTp3eck8tIOLn6kJH9l8x5ucvrrbpr/x5jMCC6
         HAfldtlWD/kqA+ueqc3EhFYl+QEqG1AY48xHEvyekkG0y2cGPU/D1VbL2rc8t8RYmrJl
         HwFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532xh9nS/CaBbMBSZslqv7JglZ+BpNVGTSplSw8vEpo8fiJLDie2
	xOk38v3lPz8ApECTxBut53o=
X-Google-Smtp-Source: ABdhPJwg+eYjWaV4UegXZMTAgytIOIz5GYUg23MbtNSpa+G3YbnYfNr6X6zR+zx013kntLniyF+sXA==
X-Received: by 2002:a9d:75d4:: with SMTP id c20mr38583859otl.311.1609774904213;
        Mon, 04 Jan 2021 07:41:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:155:: with SMTP id 79ls20121836otu.11.gmail; Mon, 04 Jan
 2021 07:41:43 -0800 (PST)
X-Received: by 2002:a05:6830:1610:: with SMTP id g16mr52926517otr.345.1609774903794;
        Mon, 04 Jan 2021 07:41:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774903; cv=none;
        d=google.com; s=arc-20160816;
        b=huZbopXXAHEzbkoEBYR9OpryZ9zeKZ2egkk7tfMCEhxu4tW8lDCY3w9goghPjrUgXj
         CvCSFrdbWTZjhS0JslJQeOlbBmuuHSEPcYe6SC/gD2ylblS3ED2NJLbzNTUbZjOmjeAs
         Oj/tXQNydJ9gTZ6lXsWQpfkIs99dR+lZ9Zpg4+Pz2LYMwTdmSSMcC4bPbnGr/9dFj0pm
         Xc7oACe/Ugv5sthFiZ1kBB2tfldv0B2w5HMxbLKlwR95LftPIwQKkylMPBBziZdZ2of2
         0sshr88u6pCdzDialHWEkUdGDMl6C0RhqzlNVZY6eeCHVqabGpNAbuvH1MB7tN7qiniS
         EsCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G2MrtbHZcuRPK1fpB0wiajIVgldcxrY0YhhP9f9CIbQ=;
        b=gcYY1F4EAhxoJCTXrC2cd4vmEDGr482lu+FA4X4wkWlO6aiBJwNDL4F7oh+YTrJqbJ
         cZWoQaWLuZck7zJSmTlBiAIpPD3kQfTaKpBHOaKaDgtW6RKkTK0qzdIckcao+t20wGKW
         SCFBiNJ0yVpbz11NWLslC9bmSRVvKv+4vW2xmGI9Vcgz7dfgJ7zXDU+ZYSyCQE/o7Blq
         2Sz7XYqTJAwVJvIVfVOsZM2mCWpt+KJ2u39IIYH2RXTUXNEiXN7nWvM8tDo/97NxHP91
         HfERRR7ac5B24Eatgk9F8M//dkku1AxHIFIMtbwvip4aHQUtMEhXsp5kjAo806nnyB6u
         xtiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=mEe5zpAj;
       spf=neutral (google.com: 2607:f8b0:4864:20::12d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com. [2607:f8b0:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id s126si3236704ooa.0.2021.01.04.07.41.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:41:43 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::12d is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::12d;
Received: by mail-il1-x12d.google.com with SMTP id 2so25661828ilg.9
        for <linux-ntb@googlegroups.com>; Mon, 04 Jan 2021 07:41:43 -0800 (PST)
X-Received: by 2002:a05:6e02:929:: with SMTP id o9mr68874659ilt.42.1609774903444;
 Mon, 04 Jan 2021 07:41:43 -0800 (PST)
MIME-Version: 1.0
References: <20201227141638.GA11393@athena.kudzu.us> <CAHk-=wjxQzF3eWank1r7F6+EqSRsO+kvibPqDbzxjHv3wzZt0A@mail.gmail.com>
 <20210104082948.GR2831@kadam>
In-Reply-To: <20210104082948.GR2831@kadam>
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 4 Jan 2021 10:41:32 -0500
Message-ID: <CAPoiz9zqKsOD8ywxgEjy5t9FB0Mv5uWgfJJCaqCyKxdb5E4wLw@mail.gmail.com>
Subject: Re: [GIT PULL] NTB bug fixes for v5.11
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-ntb <linux-ntb@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=mEe5zpAj;       spf=neutral (google.com: 2607:f8b0:4864:20::12d is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Mon, Jan 4, 2021 at 3:31 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Sun, Dec 27, 2020 at 09:38:23AM -0800, Linus Torvalds wrote:
> > On Sun, Dec 27, 2020 at 6:16 AM Jon Mason <jdmason@kudzu.us> wrote:
> > >
> > > Wang Qing (1):
> > >       ntb: idt: fix error check in ntb_hw_idt.c
> >
> > So this patch seems to be at least partially triggered by a smatch
> > warning that is a bit questionable.
> >
> > This part:
> >
> >      if (IS_ERR_OR_NULL(dbgfs_topdir)) {
> >          dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
> > -        return PTR_ERR(dbgfs_topdir);
> > +        return PTR_ERR_OR_ZERO(dbgfs_topdir);
> >      }
> >
> > works, but is very non-optimal and unnecessary.
> >
> > The thing is, "PTR_ERR()" works just fine on a IS_ERR_OR_NULL pointer.
> > It doesn't work on a _regular_ non-NULL and non-ERR pointer, and will
> > return random garbage for those. But if you've tested for
> > IS_ERR_OR_NULL(), then a regular PTR_ERR() is already fine.
> >
> > And PTR_ERR_OR_ZERO() potentially generates an extraneous pointless
> > tests against zero (to check for the ERR case).
> >
> > A compiler may be able to notice that the PTR_ERR_OR_ZERO() is
> > unnecessary and remove it (because of the IS_ERR_OR_NULL() checks),
> > but in general we should assume compilers are "not stupid" rather than
> > "really smart".
> >
> > So while this patch isn't _wrong_, and I've already pulled it, the
> > fact that apparently some smatch test triggers these pointless and
> > potentially expensive patches is not a good idea.
> >
> > I'm not sure what the smatch tests should be (NULL turns to 0, which
> > may be confusing), but I'm cc'ing Dan in case he has ideas.
> >
>
> The most common bug that this check finds is the other part of that same
> commit 91b8246de859 ("ntb: idt: fix error check in ntb_hw_idt.c"):
>
>         /* Allocate the memory for IDT NTB device data */
>         ndev = idt_create_dev(pdev, id);
> -       if (IS_ERR_OR_NULL(ndev))
> +       if (IS_ERR(ndev))
>                 return PTR_ERR(ndev);
>
> idt_create_dev() never returns NULL, but if it did then we don't want
> to return success.
>
> For the debugfs stuff, the caller doesn't check the return value anyway.
> Just make it a void function.  A lot of this debugfs code could be
> simplified.  It's not a bug to pass an error pointer or a NULL dbgfs_topdir
> pointer to debugfs_create_file().  There isn't any benefit in checking
> debugfs_initialized().
>
> diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
> index e7a4c2aa8baa..710c17b2a923 100644
> --- a/drivers/ntb/hw/idt/ntb_hw_idt.c
> +++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
> @@ -2504,28 +2504,14 @@ static ssize_t idt_dbgfs_info_read(struct file *filp, char __user *ubuf,
>   *
>   * Return: zero on success, otherwise a negative error number.
>   */
> -static int idt_init_dbgfs(struct idt_ntb_dev *ndev)
> +static void idt_init_dbgfs(struct idt_ntb_dev *ndev)
>  {
>         char devname[64];
>
> -       /* If the top directory is not created then do nothing */
> -       if (IS_ERR_OR_NULL(dbgfs_topdir)) {
> -               dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
> -               return PTR_ERR_OR_ZERO(dbgfs_topdir);
> -       }
> -
>         /* Create the info file node */
>         snprintf(devname, 64, "info:%s", pci_name(ndev->ntb.pdev));
>         ndev->dbgfs_info = debugfs_create_file(devname, 0400, dbgfs_topdir,
> -               ndev, &idt_dbgfs_info_ops);
> -       if (IS_ERR(ndev->dbgfs_info)) {
> -               dev_dbg(&ndev->ntb.pdev->dev, "Failed to create DebugFS node");
> -               return PTR_ERR(ndev->dbgfs_info);
> -       }
> -
> -       dev_dbg(&ndev->ntb.pdev->dev, "NTB device DebugFS node created");
> -
> -       return 0;
> +                                              ndev, &idt_dbgfs_info_ops);
>  }
>
>  /*
> @@ -2792,7 +2778,7 @@ static int idt_pci_probe(struct pci_dev *pdev,
>                 goto err_deinit_isr;
>
>         /* Initialize DebugFS info node */
> -       (void)idt_init_dbgfs(ndev);
> +       idt_init_dbgfs(ndev);
>
>         /* IDT PCIe-switch NTB driver is finally initialized */
>         dev_info(&pdev->dev, "IDT NTB device is ready");
> @@ -2904,9 +2890,7 @@ static int __init idt_pci_driver_init(void)
>  {
>         pr_info("%s %s\n", NTB_DESC, NTB_VER);
>
> -       /* Create the top DebugFS directory if the FS is initialized */
> -       if (debugfs_initialized())
> -               dbgfs_topdir = debugfs_create_dir(KBUILD_MODNAME, NULL);
> +       dbgfs_topdir = debugfs_create_dir(KBUILD_MODNAME, NULL);
>
>         /* Register the NTB hardware driver to handle the PCI device */
>         return pci_register_driver(&idt_pci_driver);
> --
> 2.29.2

This seems logical and the patch looks fine to me.  If you send it as
a patch, I'll happily pull it in.

Thanks,
Jon

>
> --
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104082948.GR2831%40kadam.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9zqKsOD8ywxgEjy5t9FB0Mv5uWgfJJCaqCyKxdb5E4wLw%40mail.gmail.com.

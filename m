Return-Path: <linux-ntb+bncBCS4BDN7YUCRB66QWX7AKGQEB46NSSQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1DA2D0804
	for <lists+linux-ntb@lfdr.de>; Mon,  7 Dec 2020 00:25:48 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id l185sf6167301oig.17
        for <lists+linux-ntb@lfdr.de>; Sun, 06 Dec 2020 15:25:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607297147; cv=pass;
        d=google.com; s=arc-20160816;
        b=za9bCfAwmSbqhNNQs25hRaOKQz2yM+bgDRwid5SRIjhSbaESVsKqlelK31UbEYM9TX
         dCVuEjMLo7atLYixAfk7TZEAQW8/E4qI8Td5v8B0kugknG9IwfLFLswsq59kMg+/VfGk
         tQAJweeXjxp9+zqpFjNUqlDF/wiSVTP4/YHbsMIjYShasxwI25XVuhwGVbALIMuHhbZD
         if9W6PyOhyyjxYTGwdW8PAEavuUML81fj7VWGApGQmet8XR3fJHirqvG4/AxZ9UIGGWa
         ebiZm28PmzvORgOpUGLLQlNuJXo7Rw1xGkr9JVNRjNtDKnPMM+eEMHK6fGTrewhYzPyW
         7Rqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ikj71g+n0Xhqw7J0aCXYGDFCLWK4gtVmOFSbGYOHXq8=;
        b=je7OM53PO8mzGswDoEyBwlZUiiu7Nr6xTUKaWxV1Yto4eHwbSjM6Y2TBABsDiyKFSg
         EOu2HYu/LqVpHGwqxhJL8aKgYMCLhi1HE1dtjMzN9B0QIm58+gVs8tv9Y+sUR4f2u1Xe
         +70N+d3X6vE3Co+jmoIBE95RMmKo4m7c2lgK0SfQerM81hplyPzada4kpXl9XLqJTug0
         o4+BPN+35Ec51zuK9qnz2IehY9dBO/swY8T1Qv/Sv7mLS5U+E5SoSQH/pqnN+jMxZneu
         Ga968TA4pvLe91lcy7YnwkoldA4dkYKiSPLuBilceuK1mnTnhAk0QRd6w1ih0ibQpGC4
         G1Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=ySNThDEm;
       spf=neutral (google.com: 2607:f8b0:4864:20::741 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ikj71g+n0Xhqw7J0aCXYGDFCLWK4gtVmOFSbGYOHXq8=;
        b=EIZs1q+5AWeNBF/2nQCNyR7rp6MsbEIoaU2kaqhSPQqrq6/B1L8tlMDbq1eX52tQ0v
         jhuE73+iO1SofVaUshyC4o4AIOnDh766mmavNfl4sjximqCh3Eat0yHwDZVyK5xVUJgL
         QgOD6ww++qA+buZe4GHp0eixfocw9ZZUs2NMhMcYadKVAvH5SoPeZwhz8JCwko6WIbF/
         8P7LjcqV4q+u9qovjLFOWW/VHSY5L1evW92eL2CqC/c4rkmgUTJ9uPdEqyFHy/wmXUKy
         6v1dG4fBAfH+i6ydBJTgJKmeKYBNhStkRA7fs0QxreWhZvPOrlUAzinGZncFV1iq/hq5
         PpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ikj71g+n0Xhqw7J0aCXYGDFCLWK4gtVmOFSbGYOHXq8=;
        b=PEAefinpUULeaHU8WjLRr5Xd1FjtGkVF20nMCzjRhqZog3kI6jycmBqsiCgHgybXVi
         nQfvWOu7ByrZYbW5twxvSPSgL4OyYGcswmjycNBk0W2nSHFKDWRu/CSNhbPcxrGfc6QW
         HqhqM2/pilVjj+ETDR7VYfh5dTi4N1R0xfhlXgOReiS1usm3+L9SxemFPH14LZjUsX0m
         Vim29Z5PYRyWQ6MjTrhhUEVJlt5gqpwoBx/VH21s5Vzu48ZSYFojxtvSls1DXzFbbEof
         sU8Z/ZsSvybWTyDsx+cio+yv9ueL8dHyuZ3j/YvT9w/rxn/uCQxBxtRwkvE9f/DDiCbw
         Ootg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533h4EIkdMekEJ1HIcLweQwSKqm/QAXFTEkZdAw9OtQXnwUuNy9b
	MOeWAC4FOHCHm73bXsHUMl4=
X-Google-Smtp-Source: ABdhPJzYsOVOFKk7Ym7G+DAYWy5V6E8dRqZDNcnINyTMO0rqhC6+DzPDcnIbHbdYhbrf9pohrR3Ulw==
X-Received: by 2002:aca:3944:: with SMTP id g65mr10319633oia.36.1607297147145;
        Sun, 06 Dec 2020 15:25:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:d18:: with SMTP id 24ls3827015oin.8.gmail; Sun, 06 Dec
 2020 15:25:46 -0800 (PST)
X-Received: by 2002:aca:c4cd:: with SMTP id u196mr10757785oif.133.1607297146836;
        Sun, 06 Dec 2020 15:25:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607297146; cv=none;
        d=google.com; s=arc-20160816;
        b=hq3BNmlOtPxMmV++TAvM/W+by7ReltDJi0/qVeKQ/8AFiXf3sDjwZqqeDmdnn5dKXm
         bv5ipYOGXoMyeHNmJoEKDCyE4S00ZfFoBmXeHVdSQk+PML3N+WJGl/eSNo+DeJ2jJKEc
         ZUr8576Cmhx9fWhGkNIulaxiuIbCWguR9C2fj+ofqpthozatEepuVcWlEaAIY1xrMw2G
         GFgz+itYc9562K42qd7JMnrXFXz5MoXRF8WkzWIpqVx5kPpud/3Bn6jHvNboXhuzzJTa
         XVcBSmvLCP+rpVrQMnKH/8IzGrLDEXXXdTiKuGDtGNC6xHWJXwP8tAwUVcXL3cghyzFL
         8vnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qrm+4ZKWOsKZ/Gabbvdu+1GZWGD6E7h/REZlQOG1h2Y=;
        b=Kz4ddkY3BOy8Qgt2acmTWkowMd4hez2iTxzYpsWk/zBoZ3jMuext47t/GJ9z8k9byg
         k9eHyRlHt2Wa7lY1F4/zT4ox39sER5qoXHlSo+S/mJ6D0+cvGZjTCGu8xyv/ca8+42O8
         bG2KK4iqLjQuQxDnAgSmTWYDOsz8bJ0lsEFXTtk7sCO1BQYw5bLFGiSXLLJdQ0sMeGsO
         Byw6W+7vu3VA2OZS65kdgsBMZQWYKJFryQI0uY98IhEEcEsHrAYFjpr0p/c6xUMNsZ8j
         PpJp1Hal1pX/ZKao3s6iHOIQxWY5UJUBFXmcDIvSOiK9y2NDNFA+m4VnUNApwFoGT4m1
         PB9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=ySNThDEm;
       spf=neutral (google.com: 2607:f8b0:4864:20::741 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id e1si959816oti.2.2020.12.06.15.25.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Dec 2020 15:25:46 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::741 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id h20so11078596qkk.4
        for <linux-ntb@googlegroups.com>; Sun, 06 Dec 2020 15:25:46 -0800 (PST)
X-Received: by 2002:a37:af06:: with SMTP id y6mr21639192qke.305.1607297146382;
        Sun, 06 Dec 2020 15:25:46 -0800 (PST)
Received: from kudzu.us ([2605:a601:a606:1b00:2919:5287:92b6:26db])
        by smtp.gmail.com with ESMTPSA id 9sm10006501qty.30.2020.12.06.15.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 15:25:46 -0800 (PST)
Date: Sun, 6 Dec 2020 18:25:44 -0500
From: Jon Mason <jdmason@kudzu.us>
To: Serge Semin <fancer.lancer@gmail.com>
Cc: Wang Qing <wangqing@vivo.com>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ntb: idt: fix error check in ntb_hw_idt.c
Message-ID: <20201206232544.GB11795@kudzu.us>
References: <1604655811-31933-1-git-send-email-wangqing@vivo.com>
 <20201110183340.77xcobfsnz43vsa2@mobilestation>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201110183340.77xcobfsnz43vsa2@mobilestation>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=ySNThDEm;       spf=neutral (google.com: 2607:f8b0:4864:20::741 is
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

On Tue, Nov 10, 2020 at 09:33:40PM +0300, Serge Semin wrote:
> Hello Wang
> 
> On Fri, Nov 06, 2020 at 05:43:31PM +0800, Wang Qing wrote:
> > idt_create_dev never return NULL and fix smatch warning.
> 
> Thanks for submitting this. For the both changes
> Acked-by: Serge Semin <fancer.lancer@gmail.com>

Applied to the ntb branch.

Thanks,
Jon

> 
> They are mostly unrelated though. If they weren't trivial I'd have
> suggested to split them up into the dedicated patches. Since they
> aren't I suppose leaving the patch 'as is' is ok, unless the subsystem
> maintainer thinks differently.
> 
> -Sergey
> 
> > 
> > Signed-off-by: Wang Qing <wangqing@vivo.com>
> > ---
> >  drivers/ntb/hw/idt/ntb_hw_idt.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
> > index d54261f..e7a4c2a
> > --- a/drivers/ntb/hw/idt/ntb_hw_idt.c
> > +++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
> > @@ -2511,7 +2511,7 @@ static int idt_init_dbgfs(struct idt_ntb_dev *ndev)
> >  	/* If the top directory is not created then do nothing */
> >  	if (IS_ERR_OR_NULL(dbgfs_topdir)) {
> >  		dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
> > -		return PTR_ERR(dbgfs_topdir);
> > +		return PTR_ERR_OR_ZERO(dbgfs_topdir);
> >  	}
> >  
> >  	/* Create the info file node */
> > @@ -2756,7 +2756,7 @@ static int idt_pci_probe(struct pci_dev *pdev,
> >  
> >  	/* Allocate the memory for IDT NTB device data */
> >  	ndev = idt_create_dev(pdev, id);
> > -	if (IS_ERR_OR_NULL(ndev))
> > +	if (IS_ERR(ndev))
> >  		return PTR_ERR(ndev);
> >  
> >  	/* Initialize the basic PCI subsystem of the device */
> > -- 
> > 2.7.4
> > 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201206232544.GB11795%40kudzu.us.

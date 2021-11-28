Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBAWGRWGQMGQEUQWTR5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2CE4605BB
	for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 12:07:47 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id c15-20020a05651200cf00b0040524451deesf4619109lfp.20
        for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 03:07:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638097667; cv=pass;
        d=google.com; s=arc-20160816;
        b=ucWwNMiy3QJjtUrVl7Wk21nrqIo9abLanocdYBjzNoUlZbkzQQF3aowuyQvhfUJpt5
         cBxlDxxNAiWh4T0vYoz4EZocevO1bbo5TQE18v/HzqxLSO7i1TExi0lZ0K7egD/6waKA
         Z3pQOJRZj1he5dGC04y6ftKXiZAfsrC2uZN/KDOOnz02STYsWHL7490JjJA/yvIQUJVp
         SKCZnz/P70uD44ja9u8uV6N5/imPOO+nnlzZ4AMbYuk6K56eL4TY95KqBZTgHdKY91as
         14+DvGckMjw9Pr+1IXfCBXFHkwcXbIwzI4KGLrzUCM/mJYzKKrcmXupzXwEXGN/C5hrc
         ZEqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wsitXFaYh2+R283Pd3O0KpRPU0QMuR2Rw/5RIKIGPZY=;
        b=BhXC7J8Qt/p/mp6VTtoaTtfpByiPPrKvK2HpPvhVw0l1OgOGsiCbkBqwDzxleRvqi9
         wmcMeiJEXIoLYH9Lq0avVBRv1j8DQnkGrmwZEhofv+82wD6cbtmI46FF9ffdoSgLtPbg
         Y1hpyq2gfiu6/OF0Obr34EOiDJsKKg7e6BA7+2IpZap3YsOGi47Hs/zC2GNRo/1Nq6st
         SWmgP+4Ywvi+iViuuJkQfEYweMrT89Ck/Rx26JCvT3OpTh3eo71VwunXQNj8f53db8bB
         h0gs0g3/JpheVuN7h5lcSrXs7XHnWsbAN34TMtTGIGPM2Qu1N9wsnSvM2QLWMkhc0Ns8
         hNew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dAild5U9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wsitXFaYh2+R283Pd3O0KpRPU0QMuR2Rw/5RIKIGPZY=;
        b=VVWDVFmrcBBYOW6P5fp+QnDKT5humJuodnXmKlebuJGNH2SLKfZHTIMrrmayEAU1YJ
         Okox4+FMQ8fUxjlvXKQ7kSKIlSsWNB49N8JDzvh0LutNeJtLOcnYuD1xKPBi8g5bmxIn
         +U7DQhXbu9EfQvrz6DK94JlxFxYZ9861uWTYdw/YoxkgjjQfWLcJI8KSjAs0lyoxxPeY
         2ZQ/hVjmKV5XOyaAdERccLkouLDu5XsMrCyGFyACEofCNyOigsDgex+fdh932Lm97Gi5
         Qm0lPVqTEshPp45SAh1k8YqHj3Ahm0o2DcEUl2EXg1IQ+EA+odg8jAipfnZXrMPtb4zL
         ZBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wsitXFaYh2+R283Pd3O0KpRPU0QMuR2Rw/5RIKIGPZY=;
        b=SyoNMoniauaDwgd/ZKFemWP4WreAMw/As5gTx3+aZms3X+Zs7omIL3tTf1pi7VnykF
         kGB2++/Jcx2CNvB6GlrzqcZbrga0yMnrBH8gp6aRXZSk6+eImsfUrTxmCSuPZJTeXWFT
         fVNYB6n8KOGdL+xRRUK3Ox0mVUPiemaUM0sevFYqn163ovehb/st/2NdYbFmxcDs3/Hb
         JPp0/+iKlJMkbWxx2vL0Zn+KxwbaJ710o1QuKq+64O1+H/f39gj4s117GNgM2EMX5JGS
         0UM6mWjWEdHVTElMuJAMr1Du8IPzT80/ncxSQqXp1KZ/32cKgFfF8JwgfMcgA3B7huso
         q6+Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532QF9XP2+vN2tNEkuzEmdmOiRCBailwqzIRzPh4voBMq9jgC8Uy
	+mxJ+OAIJ8ip/Y1DIuATkuY=
X-Google-Smtp-Source: ABdhPJyorKPBO67pcii7cRjZ4NtedzaB1aSXVH09gMi92AcovxHcDxWnPNnnp61ndVz8hwI0a3SeTQ==
X-Received: by 2002:a2e:83c4:: with SMTP id s4mr40669847ljh.445.1638097666892;
        Sun, 28 Nov 2021 03:07:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:b1f:: with SMTP id b31ls1485126ljr.0.gmail; Sun, 28
 Nov 2021 03:07:46 -0800 (PST)
X-Received: by 2002:a2e:a910:: with SMTP id j16mr15057536ljq.96.1638097665947;
        Sun, 28 Nov 2021 03:07:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638097665; cv=none;
        d=google.com; s=arc-20160816;
        b=S2SfYzULYE75gw5Lj2EShawkpuaatGhF8YYotHHhg4IIGO2+tAgTF3qD7NFfAPb5/6
         hZlIPZRRC321FLL4UUDe66FF4TURF5+3iHQ5YdU6TzSeRTtu0X0W9NXScWbOp+BghIYs
         imLj4EXB4EkNyqBibo6eDQN/RUbb0X1PlxyjSHXuqXiHiU8IO7CuxFp3XPdcF3eULaLk
         xwckUNv5ns3zXQHX3hAcdj74oCfi0tB+GsNq37btXQ76Y/YqCk2NtPG6Q6u79t0i6uXv
         jXbV2NdzYJYUSNkhadckqTXf7sobRaoLOBE5BYcrtl/Vrkr/H/ErEPVLaNAC2ywz/LUS
         e6FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eYKaEE6i/wB0NVY3Sqw5/2W1ub4TJ5yaf/yNo46esNE=;
        b=C2k4Irkd59yTu8q3D5CIzVsDJU7OHg4p+tgST8UYpjbgVdD1umNRnYjs3BinFOb8kZ
         9/cVPJSqYHgbwx4AeE4UchP0cOKIy5ShOf5agqwnuqQuhW6FgOsqzm0xT8wts8xIMs7N
         Q6hCMFjsG/PNRyHwJUn6brDp6gy19nwWk8JqbSlfNLwpN1vqCu2TUGh/bledehKqzPoS
         jhXV58KOxnD69eTGB3KeTrQR2VeSU8SEiDFXDzEWVxmzgqNRaDDXLTpnZsFPwKEk6YP5
         IpvQXyWQDt06CdyPwcIjNirDx57SYCVBZnoAwFclY6bhgiNrjmZbeSNEyDFRKdPDtKZB
         oYaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dAild5U9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id t71si835669lff.6.2021.11.28.03.07.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Nov 2021 03:07:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0E0D7B80B26;
	Sun, 28 Nov 2021 11:07:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB4A1C004E1;
	Sun, 28 Nov 2021 11:07:42 +0000 (UTC)
Date: Sun, 28 Nov 2021 12:07:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [patch 07/32] genirq/msi: Count the allocated MSI descriptors
Message-ID: <YaNi/YqN0ARC3h2z@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232734.708730446@linutronix.de>
 <YaIiPISLr7VokL8P@kroah.com>
 <87o865flot.ffs@tglx>
 <87ilwdfkmp.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87ilwdfkmp.ffs@tglx>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=dAild5U9;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Nov 27, 2021 at 08:45:18PM +0100, Thomas Gleixner wrote:
> On Sat, Nov 27 2021 at 20:22, Thomas Gleixner wrote:
> 
> > On Sat, Nov 27 2021 at 13:19, Greg Kroah-Hartman wrote:
> >> On Sat, Nov 27, 2021 at 02:22:38AM +0100, Thomas Gleixner wrote:
> >>> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> >>
> >> No changelog?
> >
> > Bah. This one should not be there at all.
> >
> >> Anyway, why do we care about the number of decriptors?
> 
> The last part of this really cares about it for the dynamic extension
> part, but that's core code which looks at the counter under the lock.

Ah, that should be documented well as right now you are saying "this is
done lockless" in the comment :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YaNi/YqN0ARC3h2z%40kroah.com.

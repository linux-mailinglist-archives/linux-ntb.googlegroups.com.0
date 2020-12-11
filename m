Return-Path: <linux-ntb+bncBDAMN6NI5EERBUGZZX7AKGQEG5FWQUA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id BED582D761E
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 13:57:52 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id u11sf4720265lji.17
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 04:57:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607691472; cv=pass;
        d=google.com; s=arc-20160816;
        b=i/TxuGp8BTCb2zPomTYMbaAK4OywNEMRHoL2+zKQ2vzt0MTyir0NUl9bu0HTHg/n6n
         gnhrwOCaLBUiIrftO1MRJTEyLLmVNhvbG0LtbAT+F1cHzjKRpfspwFL74cWaCz2tjxz/
         QJRdw0ZVR6HT4kPmeAlqJqTvnlstTLhyRb1+NJ5SqPkgrUWiIyzTpd+RIaWQuAbFT+5I
         NMAtxStV0lOlEZ4ylhubII1CKrsadL5Ypi7PyF6UpIlePPmeWznNINXyKOdEnIIUYnsh
         LIzvxJ0z2OcoBdUGgzzGseNi1tIQhEAW2cshBm2hkbJCjqbwgj6sV56lQLc5laN9JY+x
         G21Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=3ho1Dt6hV7zTZ+8HctOuRmUdPpj006DmktNiFVD0ScU=;
        b=zUxAZlc1ei63+5eb/CdKon7dZp1ehKGmw+CxEnOZZ6gHSDk2gtyhq1OrLpEACach29
         INnbpCXQu2XqIqPChGTdX+zUYIapac/2QcWhYvo8LXAACaTDz99GAY5v6HH7Hddjmkq6
         GckuyHw/6ZKqRz8OBNk/N28HbHy6rBfDu5ko3K/7WBkgRUPUq/3fjhnDeGV+LcDr5Pkb
         tDsnywuq6lHL1cJzFR9eHgDsju2MYTid6wiHRs05Hv0WkkNtXgsqV/Pe/4QOi9mhfeFW
         npawhnpWFBJd+c93PyQHBfF29ZUzhF13iZ+HfSYyj0MrT96urdQ1CXxqKc5IWu2iEqJQ
         rmxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=IsUihC8x;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ho1Dt6hV7zTZ+8HctOuRmUdPpj006DmktNiFVD0ScU=;
        b=Y8xu7DuSoK7TiG04+xgwbTdMJ9pkai5o8BA1Hb/5Suz/cnpnPxNEyCb9EuL+ju+3OR
         +2BqtiYwv5RNRhamU5A+2/aoAp4y7Eso/HMg4FerM26g5B+700Dh5onuJrK34eWukvdw
         KMZcUsSKwYkkMIRG0+iYlboEbYoOBynfXuTCeeExkcz2iRq2Y17yRTElOm/5n5JOynYx
         nP48vrjfE/7kZfV447N9Dbt4tiAm9Kq6Q7QfXCGCUKor9ZCRmYXrSUsO7jOoLXg4DbqQ
         R5pFf+zzvS/cjJPrMOP0bA57XPhnGI4k8COdD6CRi5zIuPo3MkEj//lr66MujAqUdW2h
         VKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ho1Dt6hV7zTZ+8HctOuRmUdPpj006DmktNiFVD0ScU=;
        b=b/2TXWWrixbTrEG7NUlWZy0j9reaVh5sXnlYLavrrAAfGRCdeAOhEkM20lhbxAMZ/9
         UAeoPwqRyj36zwPIXfiWUFaCAvc7R/aS/G//h4IMgZH/0qf1BcmasGTITHd8ywGAaxvs
         PZ16S2+5ZspNUZMqRgRea+yW+Ke43e87r/PNSG2djNFNV5D7Nd+rAHamvBXW6BqBzRY+
         Rddyqx1fFZWkROPYP3UnSO1187gRr+qhln57E7QkonVLlUZ0P9zOsdShBe/ZgcMoJd+A
         nWDd5g3iiQdt0cMGKbu8deY+e2lW9n0ngCuEmejPtWeixeguhwTcBvAfOyNhVhEeRVPt
         iq2g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533imqWVizCsd6sOin4G/fBIVD+vjSvof3LO3aqEafjkfGZ5sO0W
	IKjse4zgQvvXoSfselM2GXU=
X-Google-Smtp-Source: ABdhPJxGu49TegoYwYtd63c8SuT046nf+6dG0w0zPUKr+JgSxBm8vkQj6k7I+ThU5JQyCiDb18jy9g==
X-Received: by 2002:a19:6e05:: with SMTP id j5mr4385651lfc.63.1607691472301;
        Fri, 11 Dec 2020 04:57:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1a5:: with SMTP id c5ls998144ljn.10.gmail; Fri, 11
 Dec 2020 04:57:51 -0800 (PST)
X-Received: by 2002:a05:651c:10c4:: with SMTP id l4mr5083724ljn.256.1607691471292;
        Fri, 11 Dec 2020 04:57:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607691471; cv=none;
        d=google.com; s=arc-20160816;
        b=lOJ6C7aL28S3wqlh9nYDf/NrPTEWmlh4gesko4y2yyOR8YjpO0Hm3uC+9kWGQ1jFzn
         6y1h70nbDMCUnuSKzFAnyYm5KXwDW5gFtqNeBFsjsDIUs3Mt8BbItkRPBQsJy3Hxdnfh
         DbRFiFGbk9Gp0uTDQrkaaF5aN4nSS13vWD35sTxATlgFdDR4K+laxFQ5DtIAMus9JF8g
         aXOPZh+T0Dlj4blqra4jKGoB+iTddR9Rb4PCAVbX+nYxfOANmGqwXmxPfXfJqwy+mOuZ
         so/hXc/iq5eyl/XiujO1gW6fX4L2U8xFfiTVv4C6XrjOx0q1CRT8FQ+1Zxs29VnB0eYn
         DV8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=JI1elAtJ+5DtZ6K623jhzzi7pTI2yY5tK5xHv6JaNRg=;
        b=U4NLRl+vRLamht3L+hJ4WrosDic8CnF0J3Vw27iaKGGJA2qce9pgeFF4APzy7+M+as
         tpezNqKWUL+9Zek7NlKQagxSDUK1xU+FWGry2sC31sD5YjDptwq8qswlZptQ0taAlOD4
         abEhenRP8cYk/HZMqvlwiuC2lbfxU3akuI+VVBiMgL5YApz/IxObCeXtUeVicHjuSYi1
         G/LpwEHZDP3dn61zWR3fUW1GoFShChvad0e/qRqJPy0fmaPiHf4c8henwv3R9XO/sdCK
         2wgvwPvbAvTAETjLw7QX7WlCMOmesyPPG8pCeU74a1Um5tyr89qk61qL3aB4yTFw00bp
         Z7SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=IsUihC8x;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d3si282117ljj.4.2020.12.11.04.57.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 04:57:51 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, "James
 E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller
 <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens
 <hca@linux.ibm.com>, linux-s390@vger.kernel.org, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org, Lee
 Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Michal
 Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Subject: Re: [patch 14/30] drm/i915/pmu: Replace open coded kstat_irqs() copy
In-Reply-To: <ad05af1a-5463-2a80-0887-7629721d6863@linux.intel.com>
References: <20201210192536.118432146@linutronix.de> <20201210194043.957046529@linutronix.de> <ad05af1a-5463-2a80-0887-7629721d6863@linux.intel.com>
Date: Fri, 11 Dec 2020 13:57:49 +0100
Message-ID: <87y2i4h54i.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=IsUihC8x;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Fri, Dec 11 2020 at 10:13, Tvrtko Ursulin wrote:
> On 10/12/2020 19:25, Thomas Gleixner wrote:

>> 
>> Aside of that the count is per interrupt line and therefore takes
>> interrupts from other devices into account which share the interrupt line
>> and are not handled by the graphics driver.
>> 
>> Replace it with a pmu private count which only counts interrupts which
>> originate from the graphics card.
>> 
>> To avoid atomics or heuristics of some sort make the counter field
>> 'unsigned long'. That limits the count to 4e9 on 32bit which is a lot and
>> postprocessing can easily deal with the occasional wraparound.
>
> After my failed hasty sketch from last night I had a different one which 
> was kind of heuristics based (re-reading the upper dword and retrying if 
> it changed on 32-bit).

The problem is that there will be two seperate modifications for the low
and high word. Several ways how the compiler can translate this, but the
problem is the same for all of them:

CPU 0                           CPU 1
        load low
        load high
        add  low, 1
        addc high, 0            
        store low               load high
--> NMI                         load low
                                load high and compare
        store high

You can't catch that. If this really becomes an issue you need a
sequence counter around it.
      

> But you are right - it is okay to at least start 
> like this today and if later there is a need we can either do that or 
> deal with wrap at PMU read time.

Right.

>> +/*
>> + * Interrupt statistic for PMU. Increments the counter only if the
>> + * interrupt originated from the the GPU so interrupts from a device which
>> + * shares the interrupt line are not accounted.
>> + */
>> +static inline void pmu_irq_stats(struct drm_i915_private *priv,
>
> We never use priv as a local name, it should be either i915 or
> dev_priv.

Sure, will fix.

>> +	/*
>> +	 * A clever compiler translates that into INC. A not so clever one
>> +	 * should at least prevent store tearing.
>> +	 */
>> +	WRITE_ONCE(priv->pmu.irq_count, priv->pmu.irq_count + 1);
>
> Curious, probably more educational for me - given x86_32 and x86_64, and 
> the context of it getting called, what is the difference from just doing 
> irq_count++?

Several reasons:

    1) The compiler can pretty much do what it wants with cnt++
       including tearing and whatever. https://lwn.net/Articles/816850/
       for the full set of insanities.

       Not really a problem here, but

    2) It's annotating the reader and the writer side and documenting
       that this is subject to concurrency

    3) It will prevent KCSAN to complain about the data race,
       i.e. concurrent modification while reading.

Thanks,

        tglx

>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -423,22 +423,6 @@ static enum hrtimer_restart i915_sample(
>>   	return HRTIMER_RESTART;
>>   }
>
> In this file you can also drop the #include <linux/irq.h> line.

Indeed.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87y2i4h54i.fsf%40nanos.tec.linutronix.de.

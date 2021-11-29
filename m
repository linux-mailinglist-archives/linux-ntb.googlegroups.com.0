Return-Path: <linux-ntb+bncBDAMN6NI5EERBKOPSOGQMGQEFZTE6IQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A92C461A35
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 15:46:02 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id w5-20020a05640234c500b003f1b9ab06d2sf1774280edc.13
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 06:46:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638197162; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGcT4Xh1lzIeig3hqlRS8SSI8kVy848Zqm3a8K9+Mjn/T94gunMVFA45BoDoDBdCIW
         7qVDPYrkGx1g3DoXPTXwXv8VPQbiezoMtgaGTVzqSv4JmHQ1YE55DRvuWnRMneCjNwST
         +vBlHG038ZIj9LfTYiPeJyiTxVKtyblLbunOd040T/0Or6rhKwkT6teXBc236WzMnvwg
         yOijxoXQISB5mfP+k5fHwRKoMOmm2EnEnN07rkXAbDfYQgdI9fhao2wqTCzzpUBMbOwI
         V/Md+6CpUuccT4maxpesJPS/FHPymA5u+L4xzAiUFOFSC1tADtkmriQg8XrabqX9jC8T
         nzBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=XWAOkadJCLapOsI9KhLMq1/K0hpnCyMsQI6O0KSljM0=;
        b=rtVlRR3kWq3BCL/92ic5X+Y5K5kAXwHgietq8on4WlgTHHonAi3XLTpGk4AnA1p0CU
         1c8/J9Ay5fboGr3FX0b4GO8Yv3t8j78yP9RLQ02hGrbIOrlxo1MsTYQ7+3tHbI/EQ7tn
         4BIGhXWY4W55ccPNXyGxJGrVu8cXYmKPusN1/PFZfAH0NDXKIprRSD/c+hnDo9LtrP7u
         UTaXRY5agac68UonQyiiCPW9JMIhfez8Dy9v5Z9YS7tUqwyit73J7aXjbIaKvieykrKw
         rzvd6lD7sJAvboZ2cuTx48lgayncmLA1SfM5gjqCcPykY3Qol9UOmL6QTlRGzmJBFTYu
         WWjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=3S6nmBad;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=vkhx9Uk6;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XWAOkadJCLapOsI9KhLMq1/K0hpnCyMsQI6O0KSljM0=;
        b=noGl2L0BhgUEoc0Udzalk7cRoBJET/PtwAGc/wDvEnMuIEvT1mzGyk3OCWFO61y9PP
         /otlJ/mCJ+rHSx1ahgs+jeOhMOkcMYLOPr04KZGEfgKKt5UF5ccW6PnANP+LK0ZgVkG4
         g50XfFd8Qf3qJ+ftx0YmV5sS0YJ31RZjVnGZkq2K5ZuCiZ65HO8FdVCE6bk3UD3aX7Ee
         WEDcJRZLvjoSp7s6IFsNC5LKjW6ZsdQSW3QjXO7az0r2oQF77egKIhDhvN7BO7bDRSyL
         JIu7rUwiB0+U5C2/LN+ncioBY5ul2y088gES3WUJh8KS5KBxON8//K6D5VIVCmKYpURy
         KumA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XWAOkadJCLapOsI9KhLMq1/K0hpnCyMsQI6O0KSljM0=;
        b=sl2T+jx5BW0Y89ULqLbBAjzVNeq+bb/8TEVpd3cZBotAtU0SdDX+KSriLIqsI142UD
         +43kMLUJI05BaNU7rtSv89rtXay54zmWze2fUT8NvOq3Bb9bupP5eotYH8LWns9TyZ5g
         3t5T2Em3B/HrKUXtpiFy4XS4acOKjSwtAj8JqPn3GnL41oWsO1Ox4QNkd/FhEyyi6Yzw
         YENyGYMgVbQ547SHbkox4Hc+WP1JbwEgAR3fUrnvhvVbT0hCDAzKC6D8QDQDdT2DkDzs
         S4r6FxPS2dY5S6oV+PC39x48FDkIzZD/argkinrxNsL7mxZ6dM0yVcHgrL4H3N7gqPyb
         cW8Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530YvHcofWqxe741/YMPld8LKOB0josAnc5jbZnBEhpINfC8tH54
	m144p+rq5bWkDnLYL66SDXU=
X-Google-Smtp-Source: ABdhPJwcym2kaX6IuM4IjlgHbn0WuIdcvtgrlzFth6RsobowYwtzZGPpdL6EMz1oryu1BYONjXSRtQ==
X-Received: by 2002:a17:907:1b0d:: with SMTP id mp13mr23989776ejc.29.1638197162245;
        Mon, 29 Nov 2021 06:46:02 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:7f0b:: with SMTP id qf11ls1845954ejc.7.gmail; Mon,
 29 Nov 2021 06:46:01 -0800 (PST)
X-Received: by 2002:a17:907:16ac:: with SMTP id hc44mr58805668ejc.363.1638197161242;
        Mon, 29 Nov 2021 06:46:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638197161; cv=none;
        d=google.com; s=arc-20160816;
        b=qW8ZiNE/gbrPN6h0gJGOGWN9gL14fIUV/fnNLjYEAzW/fTuUNeMjgNXG2aNQJM2K4k
         CvqyabIsM8TIMfYPj62WOMp7ENLttW9Oq8wEalUOfWx73KjvVjPBTO75XWwPX2r+THfD
         P4MY71rs608Ry3dkbl2YAcPd7I6d1/qk2g+19nQ3u2Z6OG6Pu3CTf/38NI5hcHqc8UNi
         iUV6gDl9Q0bN1sP0cpl1M/F7OtVSv+W+UdwRUc7lLYAGblntTvQBL6WWr61qSxEzd7kO
         jsuvQzcqLlIav1iOSekGi13D7wCLhiY6odt6Z5wFASoWa1IwS2hVdYisHYxBrJXdM3GS
         BLKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=moCVXIgDd3WnVTqImBDpITWvvySrFpXIFP1kWeQJHKU=;
        b=G07cWF6zcw1eguokIu831L8uDC2SRZSH2SmiRzNFG7jVlF6WnJC2uAOiJPQoeB5aL7
         zPRkLCb1xaIJWJ74aVC1nKlGmDzb79CItLdriS6mG9X3aptyvantScY71gT1p9tgwTGC
         fzhlL0NaMWiJS3hYtLfowFGsqEtVplmN8LEzVFpXY0UTLlr/GvgPEYJBTkJP7qfdBmeB
         xbA+LP2KT2PpzZVtty9FOoq0TIHXHC4Jezamwiv4nJAXNsPAJVzjC6JNO31GGnd20SLj
         ZiylIxprniGYIWSNd0ustWyScACLISCEQVhxUF6UQ9ni3LYsJ4uvRJtA7WcxmMqDRYtL
         mEiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=3S6nmBad;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=vkhx9Uk6;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d5si1114856ede.2.2021.11.29.06.46.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 06:46:01 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Jon
 Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [patch 04/32] genirq/msi: Provide a set of advanced MSI
 accessors and iterators
In-Reply-To: <20211129140112.GX4670@nvidia.com>
References: <877dcsf5l5.ffs@tglx> <87o863e2j0.ffs@tglx>
 <20211129140112.GX4670@nvidia.com>
Date: Mon, 29 Nov 2021 15:46:00 +0100
Message-ID: <87a6hndnpz.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=3S6nmBad;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=vkhx9Uk6;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Jason,

On Mon, Nov 29 2021 at 10:01, Jason Gunthorpe wrote:
> On Mon, Nov 29, 2021 at 10:26:11AM +0100, Thomas Gleixner wrote:
>> After looking at all the call sites again, there is no real usage for
>> this local index variable.
>> 
>> If anything needs the index of a descriptor then it's available in the
>> descriptor itself. That won't change because the low level message write
>> code needs the index too and the only accessible storage there is
>> msi_desc.
>
> Oh, that makes it simpler, just use the current desc->index as the
> input to the xa_for_each_start() and then there should be no need of
> hidden state?

That works for alloc, but on free that's going to end up badly.

>> What for? The usage sites should not have to care about the storage
>> details of a facility they are using.
>
> Generally for_each things shouldn't have hidden state that prevents
> them from being nested. It is just an unexpected design pattern..

I'm not seeing any sensible use case for:

     msi_for_each_desc(dev)
        msi_for_each_desc(dev)

If that ever comes forth, I'm happy to debate this further :)

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87a6hndnpz.ffs%40tglx.

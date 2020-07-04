Return-Path: <linux-ntb+bncBD6L7CEQSIERB3OSQL4AKGQEVTMQEMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF0E214737
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 18:08:14 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id ee9sf20019047qvb.6
        for <lists+linux-ntb@lfdr.de>; Sat, 04 Jul 2020 09:08:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593878894; cv=pass;
        d=google.com; s=arc-20160816;
        b=bSAmFjNoZPkPwa199wQjBgRR7pAMOtybdzEG8u8j877Y3E4YDP9MRDiYxuLOEXXMRX
         A/jj5vJHemzQSxQ8NC3iV1sra6+YVr/FEayKbGxwxHWu9CMWu5DCCgE6Urc3U/LwjWXH
         wWM0x4bUBnSELHgdZ+3uRDdKANKov5uq5h1yrzJU0PMU1n11T8bbwoTn+GKJckHqufpF
         04JHyyjVbPY1QQ+HNzWreONIUvPzKOhgZFD34PF2tPm15u6b/o9oSGFbyT89vkiCQT6R
         qXIzYqAFFwIzab5a3xEkwNay/ndAKKed85pEuJw/U5yAD8/kmMQvbRKoukny4y1d+UN7
         LysQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JtkIn5m+9uoThqq2EVPeUH/gxMmSodLUf7D4a67J4wo=;
        b=mZ6GnK+w0aHOxlrpP2smtoAS550rOuLxEnezq9ADfCy9Wlnqz5YhG9y3Z8pTXgbWrb
         ewKQMiL0tkXYUPNkd0oaMe6YG0RBUyAA9V+2yUi14orkV8x1V9o6bJaohP2/JNkT9qM7
         Q1co4/Cp4vgnweKzMpGA2Sr5V/5HFHcJg/pC5o0B+wdJsVItmI7GfKIO02T+iee78oA/
         NXw/myRgiWOF87LVPAEmY3lttrGgwV3rKHFfkvCy+Dz+/VVyGZq9f92snSUv9tJnPBGy
         qWpbWFNb0RY361hZOkSVHEXSqgy4LEz3ITcS/1kXzPijSJ0oo8jj4XMQWo39C6UEKz5h
         67Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="l5+F5/yt";
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JtkIn5m+9uoThqq2EVPeUH/gxMmSodLUf7D4a67J4wo=;
        b=Y3bKARYw1BtVsn9xr9wu8CiWO6pJ/KoD3nFTDfCOMRsxYWJOGGX0e5toxJSIjZcvRA
         cSTazFp4YPQTLObfFNKERp8OHVzjti3r/Qzbo+XcGz++I5k4YzbPnh2jSjth2qrozWtf
         dePpNjpt4QwSTjfRWu5pojn7Ye+V54b5Sj2LyE9X2+TZi06sb9TMdXWbuowWGcAfyS1D
         DZ1wGvFRZ8I4tcgc9x8t6kl4vpF2hW/PIhN6NDVxDON3nXCIHJJd771bTTptqUkHBdpo
         0tKfBhI6SCHdCeMUkkyb0NX1AMgm8VK093RnbHvqpFzd7ScAoQ7R+3r55G5W15H0c5wY
         1c3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JtkIn5m+9uoThqq2EVPeUH/gxMmSodLUf7D4a67J4wo=;
        b=giS87ZwPQUwhH8OMdsdMsRWbHS1gxWoZqJWy08PV4qEAMNpQ5pe1raLOzarpSBcqqB
         bHF9VCgIDyzIvFAHNYUdSGXP1BqJfE3VW/MpZFDAj5hIGNj638tCuuErm1v71d+q5ozK
         oc82Sz2wjfe8O8d+DPj4BXBuoYHA8quQ28kTD8t1BrdMJ47VQTJEwwn4moEzBmJvMwxS
         vWSxWKMuY+ibiCOYhDROqhpagLpRXgqPR+Q+mPmZMjowajZyDMao06/4egOq0tegOElG
         zVOkqFsDVMtLveokcaHwoL1SxWNED6S4U8bKeO9XBFXX0QZkcoB34le84pB3ztMLzIsW
         J3RA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533m69Fuu9Y9bGEd2zrAn2bCOFfgPR1YbKyuv4Pgi5HSkq4SyuzF
	AT0oqlR/im6DD83ygHROGoA=
X-Google-Smtp-Source: ABdhPJx179dQjq5kUw48AR5DrFWJc9Vj9w7O0MX0Xa82WlzsmMUzXfn0cXX4pnPhs/yhvTQT4X1Caw==
X-Received: by 2002:a37:a8c9:: with SMTP id r192mr38025860qke.467.1593878894022;
        Sat, 04 Jul 2020 09:08:14 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:ea09:: with SMTP id f9ls5753476qkg.1.gmail; Sat, 04 Jul
 2020 09:08:13 -0700 (PDT)
X-Received: by 2002:ae9:de02:: with SMTP id s2mr15269192qkf.396.1593878893637;
        Sat, 04 Jul 2020 09:08:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593878893; cv=none;
        d=google.com; s=arc-20160816;
        b=UBcK5XV4jFBGxjiiY3dnflXhsYolMDEO9ODY/Ea1HuvjLrVZG1IJbBxO9pZlECWbS4
         g3MDCdJfUVEvvXTqlCZS67GFrMDkzhWYaj1KlmokJfZ5aIvmktyPDcJAAhHzQb96V+vZ
         G+FihPTOwtAI07nFPdOOri6TxkJVgDjX+KkUcjdYexdsXDIymwIMRow+QqcuJSODWJHn
         KheeUerSZySTDqpctc+hppuRePIMA0L7Z3fM16e5Bze6huLX3g/7UzFvyVmijSgH2iM+
         qhjiP5/OUaG3cn4YcCnFOuvXvmYdFWiwfjCcQ2ZnTzIFPAPKmOjfEIfcZ+Tt/MP8rbKv
         ix4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=X4xFxVgGyOh9T6LfbJ5l+hSNKy4sLC+bVgReprcmq3o=;
        b=kp7MdQFhZw9SGbKugPsHvH7EWUYCakL6DVGwIBz0x8V69YSOycwBDqp1RXx1zbpvMy
         k7p+uSixEcOMEnMrO1e1BV+ZCCc8OYTeoqMM+dmLlykrDi4v7ODpiwOAUCJBZxfOLgMn
         Zrnr2FyvAwC3sFad95eZab072cOc3yeqPlugkFXJWRfU3ekf2tkWnkRb7QV4ly+t2lwv
         kLyRTYRLv32ba2wRhvxkbGPVlSmqErrQNs1F5WKjEQQJodbe0MpWuy5z7bP5Iaqn6XJT
         Bp1OnuClK3NpDjXn8rKsfMMQYgpq4Rfutqn065tqKzZlvOCZu4XxMk3sXrtQZJKSTR2H
         a0nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="l5+F5/yt";
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si757986qko.0.2020.07.04.09.08.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Jul 2020 09:08:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net [82.4.196.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EE73520739;
	Sat,  4 Jul 2020 16:08:08 +0000 (UTC)
Date: Sat, 4 Jul 2020 17:08:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, Vinod Koul
 <vkoul@kernel.org>, dmaengine@vger.kernel.org, Luis Chamberlain
 <mcgrof@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-iio@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Dan Williams <dan.j.williams@intel.com>, Vishal
 Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 linux-nvdimm@lists.01.org, linux-usb@vger.kernel.org, Eli Billauer
 <eli.billauer@gmail.com>
Subject: Re: [PATCH 06/17] Documentation/driver-api: generic-counter: drop
 doubled word
Message-ID: <20200704170805.18b07f1a@archlinux>
In-Reply-To: <20200704123041.GA5194@shinobu>
References: <20200704034502.17199-1-rdunlap@infradead.org>
	<20200704034502.17199-7-rdunlap@infradead.org>
	<20200704123041.GA5194@shinobu>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jic23@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="l5+F5/yt";       spf=pass
 (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jic23@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sat, 4 Jul 2020 08:30:41 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Fri, Jul 03, 2020 at 08:44:51PM -0700, Randy Dunlap wrote:
> > Drop the doubled word "the".
> > 
> > Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: linux-doc@vger.kernel.org
> > Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
> > Cc: linux-iio@vger.kernel.org
> > ---
> >  Documentation/driver-api/generic-counter.rst |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > --- linux-next-20200701.orig/Documentation/driver-api/generic-counter.rst
> > +++ linux-next-20200701/Documentation/driver-api/generic-counter.rst
> > @@ -262,7 +262,7 @@ the system.
> >  Counter Counts may be allocated via counter_count structures, and
> >  respective Counter Signal associations (Synapses) made via
> >  counter_synapse structures. Associated counter_synapse structures are
> > -stored as an array and set to the the synapses array member of the
> > +stored as an array and set to the synapses array member of the
> >  respective counter_count structure. These counter_count structures are
> >  set to the counts array member of an allocated counter_device structure
> >  before the Counter is registered to the system.  
> 
> Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

Applied to the togreg branch of iio.git

Thanks,

Jonathan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704170805.18b07f1a%40archlinux.

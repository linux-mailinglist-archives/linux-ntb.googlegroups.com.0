Return-Path: <linux-ntb+bncBAABB4MGU7TAKGQEWW3EXXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B20910A89
	for <lists+linux-ntb@lfdr.de>; Wed,  1 May 2019 18:04:03 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id v123sf18596499ywf.16
        for <lists+linux-ntb@lfdr.de>; Wed, 01 May 2019 09:04:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556726642; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJkXdnWoui3XZzDG18RFEXRnR3HNZ20rV/sstwfZBU1LQnOgDo1daGGWWto4y9KcFQ
         +qoQB6S91gFLWZPy1YbG+LRylIJHpJp0xeyrouI+IDB9m65bVoD8IyKh2lB194Uc7+Gx
         gefWsBHPw+WiSIrkMfKUaGyofyhaXiLMrsv2pinbtecuVphSTTy19fJa7sR3jsT9KxaR
         P7EYHiKp5OwyuhlfFx9wIJF//nes+vXvSXvTv0CIrQFs5zzOmLPEx2BjInkVJNthy69y
         B8KShNhFvpN2HQWfsE8ocOF7tnULPALVrivMoarGNuhLHngInpSqi9GStg2NsXwO/xBE
         F1lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EZJpsOjOxWaEjAcqZMHfRf/5ShrLd7cOxnuDCybKUBw=;
        b=n3xNxP2m/xgXqhk5PM4ZF1xXuBUjFKv1dGQZurW2gv7lPieUi1dRK1w8TmBoU10NsP
         4CarYwnuJYsHVCAi3BwCJl1IJoa4wSLj60FVGf/dYyEOAuIRJRDFMfsUFDPlf6RFlRyl
         DQm5tI6ziXzh8I7/c+GlZOyg0sLjsC5l7tRki/0alm2nMRCsu17txzHbe5FEhzXld2Wi
         bl16PcVEht8G+dMAIiEzBVwKqh45DbJ86MamtMphG0CyOOk/zyhw6v2aMrqTWR5AT7ji
         r5XVSekNKfyiIfVH9JccPcjpuZE9SmZXCDVkhkG5fNDPoh3SekiWg9HrQJl0HnTSw3OX
         AE/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning kbusch@kernel.org does not designate 134.134.136.65 as permitted sender) smtp.mailfrom=kbusch@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EZJpsOjOxWaEjAcqZMHfRf/5ShrLd7cOxnuDCybKUBw=;
        b=B7e2kUjCCafngQQpqD7OgqJgG0E7C87nUp02pi28dJcdO1cmYF9OKcUWRHVRMRH16K
         cg0ZxFmj3SwS0DROQp5OwaXGvcnM5gJhiP1PEh/UMeY5jfcrhq0IYfm6o17Fwf3o8V2F
         P8ixkLufNBD14Os4/vH8OA2iSe24cOSIX8CyrDRYY4thA/bXf4WePxleFL1boHVPMwbh
         WmkAxT2cOf0qXwlxTwFHUtSYrRpoPqn9tKP/Hw3poADOZJ2GviJYBrsEF9frq3iiJC32
         57SNe4j64BLiRZMeMOELvximnnqIycUWC1AlfFFeeMYkmbc6Mx7CJ+Y41Q/5Iim7HHTP
         Pjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EZJpsOjOxWaEjAcqZMHfRf/5ShrLd7cOxnuDCybKUBw=;
        b=siSSSU3PkHjXHd7mcAChdOFC0WN7xyoPWunsZfkSJfoY9d+mkiRoIlXWLufMIgfsTw
         SMvI+VdehegBwvEmBAJCaGHF34AuNROxrCWijmSZfPgCap1A4D817B2n90inkErLYNS1
         goRXVljoFxtzj3IdcJOOuj8c17SQkLGrXaJoci/zVmuEO1jbApUknBc/Sn3y3snCtgHm
         q/t37eUMeo82bd8AgSpZyEuOqVzGtpC4vTKNPGiJoneuYLFpyHYPwgAQwWS24sY/mcHm
         3Nc+HuHvlSE6E36qtjWoc1WdOBZ+4t+JE1sBpoWA7s15lgN1WMQhDkO4FIBqllmUjmqD
         frLA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW6Cac0eBCoMYrNfkkWaBSf5rWKm50hcr3Ebk7ZlQugMXDa4GlM
	bHWOC3tATp6VdKWEHuqwDzI=
X-Google-Smtp-Source: APXvYqxwglIxEBYg0haE8NETMzIf0tIDB9x513u79ilFBs3RpcjD0LrRx94FNYbK3u+3z9jaflrvTg==
X-Received: by 2002:a25:2fc8:: with SMTP id v191mr36173655ybv.17.1556726642003;
        Wed, 01 May 2019 09:04:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:4a02:: with SMTP id x2ls11081126yba.7.gmail; Wed, 01 May
 2019 09:04:01 -0700 (PDT)
X-Received: by 2002:a25:3b04:: with SMTP id i4mr16443874yba.261.1556726641686;
        Wed, 01 May 2019 09:04:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556726641; cv=none;
        d=google.com; s=arc-20160816;
        b=Gl+0pfYZS3JMvhwn+W0YCg43yCxnGQKzyxWq3y2fsKhPiB42iWnw2j4ozt7qORwCd/
         WqSdcRL0ZpgIug7MNUBxBe+yTwyHi+jaJQQ4Q4dCxqDyPZevwAD0zAFxMOjyE44DWX2z
         97O0AlVeSJlNOLScYwTHhlR09UafctlcDXJQ5uOQF25qEmUwd5q9T0J6fiaYW+dXxSEu
         g6X6FCyhjO5iwmiRtwEUgWliqlTdX61pokduJNJB94rgSYCBxFKVs0ExS9o2G+CflhqY
         bqs7uPA4lBSaqSSaA7iaPOJXwfznrgvR1mTrXqrKcOAjfwspWxr8b4l/rBSWt+c7SC+s
         njOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=rBpfu2Xi/Ieoc/NloKwDqwp0PGVkPVvxRI3hxknKjKk=;
        b=rOOFz/1Rs7qMysVLfohSTaDtRl26Y4t1qpOuaPXXDeBYG/WkJuYqOeWr0qJ5isCO+K
         1VdoVLaOnFrxaad5LoVFTvbAHbda06wmWAKNDdHb6L5jO7VBhJ4axYQBg8VmC9E+LB43
         cO4FycqBWkJa5uKRAaufT8Hj1yjw/2esAPJ84encv3OfKsiQEyTOSF6ngKVy1WZkq8Sa
         6HGyiZnopwtVAE3rySenuTDu5p7iFZD2mV43vaG9y+bRqg6a+jrW2zZQxzZKlJibi8yi
         +1v9yvpVt3fQRQorR0rwYe/e262Ljy4ziiFlonEqy0jWn6V21q5ild0TwcXi567tV8QR
         P1XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning kbusch@kernel.org does not designate 134.134.136.65 as permitted sender) smtp.mailfrom=kbusch@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id a193si818102ywh.3.2019.05.01.09.04.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 09:04:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning kbusch@kernel.org does not designate 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 May 2019 09:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,418,1549958400"; 
   d="scan'208";a="147298333"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
  by orsmga003.jf.intel.com with ESMTP; 01 May 2019 09:03:59 -0700
Date: Wed, 1 May 2019 09:58:13 -0600
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: Eric Pilmore <epilmore@gigaio.com>,
	linux-ntb <linux-ntb@googlegroups.com>, linux-pci@vger.kernel.org,
	Armen Baloyan <abaloyan@gigaio.com>, D Meyer <dmeyer@gigaio.com>,
	S Taylor <staylor@gigaio.com>
Subject: Re: NVMe peer2peer TLPs over NTB getting split
Message-ID: <20190501155813.GB26910@localhost.localdomain>
References: <CAOQPn8vMn4h=oGWWKa3Uge7WYMkmRAmTyhR6RPjGVtrR1hfhOQ@mail.gmail.com>
 <4389bccb-6993-4a86-b4e4-202e971e2080@deltatee.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4389bccb-6993-4a86-b4e4-202e971e2080@deltatee.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Original-Sender: kbusch@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning kbusch@kernel.org does not designate
 134.134.136.65 as permitted sender) smtp.mailfrom=kbusch@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Apr 30, 2019 at 03:27:53PM -0600, Logan Gunthorpe wrote:
> On 2019-04-24 4:46 p.m., Eric Pilmore wrote:
> > Hi Folks,
> > 
> > Does anybody know why a Host Bridge might break up a full-sized (max
> > payload) TLP into single byte TLPs when those TLPs are traveling from
> > peer-to-peer?
> 
> Host bridges can't be relied on to do the right thing with respect to
> P2P. This is why the p2pdma code explicitly rejects them. Bad
> performance is often the symptom and splitting may be the cause (I've
> never bothered to stick an analyzer on it. There are patches floating
> around to add a whitelist to p2pdma which would be what you'd want to do
> and avoid anything that doesn't go through a switch.

Note that Max Payload Size may not be the same across root ports,
so splitting transactions may be the correct thing to do under some
circumstances. Kernel parameter "pci=pcie_bus_peer2peer" should make
all MPS settings the same, though I doubt that will help for the
hardware desribed here.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190501155813.GB26910%40localhost.localdomain.
For more options, visit https://groups.google.com/d/optout.

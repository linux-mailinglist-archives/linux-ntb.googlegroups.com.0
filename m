Return-Path: <linux-ntb+bncBDR5N7WPRQGRBZWM6T4QKGQEVADSRGI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD1C249F5C
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 15:17:28 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 34sf10819392otu.10
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 06:17:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597843046; cv=pass;
        d=google.com; s=arc-20160816;
        b=jhJ+rjGPK18PLy0fXKXHjJEzdFose/hNYeMJKUWrl8ubjtERJ0jXKB9X3lFaD7j5xD
         Glwpzzx0R8WsH8/QZHrijttu5gWRRWz6OGGawDV/fw/m/aXvDqoqxqWz9Ux14KdcjJRU
         pFFbcydmgBDQc4mug6eE71pB53aezrdPF4wApM3wtuuTip7XpY7akM5HpCKGrEKHv2wA
         Q/Hjfgbg4pVrKPiBQlLXk2BLO5qu5e/V+cgjVu4ITgChpLTlveJIT/XjkpNgCJDa4Z/+
         csNwTDPPC2JvUo1hYlENMbqrBUYxjKjoTQfMPD/jF7/hsBM0zwXkSyMgebRCRUZOhthE
         yOXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=rymnwNMZL/XxJiF7Dpce0R3i6YHD1pSQf5HxPFNVxBI=;
        b=oHtmzhWFdk5/1XdNV6k6saLapQoHBUs+u/ep+hcFYYj6FLPHFoR3/mzN9gmuXWXqOM
         xmMLOj1D3I2imfIjYI0+s9kVvQ0vmtBv6V6rOXOrw4vwfU2gyH4NHnIRoIM2tk+zGts7
         1qK+aQA2mYwlNHpdPWuv9AUCc2dESYY4j9IM097HwamZ6NsIhE5cGBFZPNROdUNeBYey
         gTWMZaYU0vvNIKFnZuROfbIP4GiPh5/ltMTOl/fii83oPNO/+AvsHsiOiUaW8OvqKjRi
         xyQL1lV74Fp8evMwbIT0lKKtXPTgfIl0eh2JMPXCLSHAgeh3+OxT0xMF1ex58MxlhyLv
         pvhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=aq3Djs+J;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rymnwNMZL/XxJiF7Dpce0R3i6YHD1pSQf5HxPFNVxBI=;
        b=MLTW36tqU5DQf+zX8YtW6OCHJjAM5RXHCe7SS1+Ca0H+/2IiG4JDBgalOG6P877Xh2
         tmj5kqudiyclcxmafgoU4v9J2SgctkqrPjvn1oMVthPOhCEZNlssj8XRl+p+0n3w59q8
         GErGRpNg9C99ZLOb62uQgjZ8Hbvfe6+NCXgyGXXP/jGU70Bmzu2/fqns9Gq6Bzgrq4aS
         w37UFTZKMfwjsRDBruXdv1bMKErQqXP671sEinAM7paY0YfsxR0wiwRQpobXjsM7IX/O
         b79O6qOt+NX+9AKBjaA2vOrKJZUOlqHzoKnNFe1Ke3NvyyptOzHqCRaaNBEOe1BKS58O
         f3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rymnwNMZL/XxJiF7Dpce0R3i6YHD1pSQf5HxPFNVxBI=;
        b=ARQw4G5upfcMIDy7arEH3DgWIp4O6USQRsQFcj19vO2uRkRQqWhKh+IKMcZ7fwOl67
         +cYWykDj6J3+Tw3oibJF8WAtP9XXbIgwyuN39FIPXH8OswYLjrClUAj8KK+EBMVZrduS
         yrqnmAYMnCv11Bqnywcp71O3x7kPNTbDqTMZI7ZUT3JdpTo28uylYltjX10lbmrw7hVF
         DegK4UbXvG3Xc+6/YuaXid9WOVMISHtDbjIYOZV9704fjaIlo4HzvAsqVwFsXUfPxzms
         VcerDHFkdGidF51Y+EcgVc+mQx6429ZOC7/fYvSKDA8mMFE5AltcTVF5C1mVLeaAsexP
         5zrg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530tb6YtsxqruE9VeRBiFU3RtVxvIhmcKU0ucgYsweFNLlNi+/gI
	EfsYBY3/kO4eKzb0IGS/IKo=
X-Google-Smtp-Source: ABdhPJxPLeeNRdZv2VyGNUW27+js6+3npVqRmLuVvmxJ7NGfuPDQvZDxVbB6Y1BjvF/db7yQP6+c4A==
X-Received: by 2002:aca:55d6:: with SMTP id j205mr3318802oib.0.1597843046738;
        Wed, 19 Aug 2020 06:17:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:310d:: with SMTP id b13ls5226760ots.0.gmail; Wed,
 19 Aug 2020 06:17:26 -0700 (PDT)
X-Received: by 2002:a05:6830:11cc:: with SMTP id v12mr19038661otq.268.1597843046220;
        Wed, 19 Aug 2020 06:17:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597843046; cv=none;
        d=google.com; s=arc-20160816;
        b=J6deW7wOwuBgkdTxurspm1PoeBjM25RjSBGoY67en9sR8jcJE9au17KPW7fCz/Awya
         HuIznw+QCKrYgKbXIxmDjbZ3DYrEmZXE95mYw98MliuQYyoILFO0nNnKiG4w2B9gg/Qj
         dhk2V/952AxxT/DdXTU6qzq/FR1SSgppPRiv2IQ7YZIVIT+C6O4BVsaN4XvIlOdawEx4
         Vfr00iDacZObMwkKyG7UCEWK0B1BCn+c6kfDQMlWg0YKJSMAZeKiLM+YWeSNZ51+SoL1
         QKO1gm9Au6gXgqlOGIKYzhqhieE7g2kDAaqtOCKQPzPBbbEd0fuPThL+ZBCbBSzG4CD+
         xFrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=jVlnd4GIq1avq9wCVX6yvVGrSg3V4B5anM3I74fUF2c=;
        b=U2w8CQUdRgBfTFRA3fmDjpYFYYIngaXB7vY3xnHWuUfhM9hDq1UaJZDsfyRcdWektR
         T1floNeIHiR104y7RxqBhSkp136Py6QhjDHO0dEYJ2qb7GNab9P9MpcDwFOMa3vIEjfY
         JRRtIOV3Kzp6fHgr6Z4sqbEcxvCcg8o+gkBJJBZDME0uTyAtgf7Hla1/pygBUZfftk8i
         M0J2YgiLdoIBNTshleaAG1qHDPCzvdKcX6h4vdoFvUVVE0289/glT4IkoogsxW2bdIKl
         9aKqVxZ/WoXd8JylSMP3fkgKWpZM/cpj3QCuS2r+65tU5Zm/9AWIWnMaAyCuyFs9cN0Q
         KbYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=aq3Djs+J;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i19si1451873oie.3.2020.08.19.06.17.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 06:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p37so11392223pgl.3
        for <linux-ntb@googlegroups.com>; Wed, 19 Aug 2020 06:17:26 -0700 (PDT)
X-Received: by 2002:a62:5214:: with SMTP id g20mr19509095pfb.168.1597843045329;
        Wed, 19 Aug 2020 06:17:25 -0700 (PDT)
Received: from [192.168.1.182] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id 193sm28368540pfu.169.2020.08.19.06.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 06:17:24 -0700 (PDT)
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Greg KH <gregkh@linuxfoundation.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 Kees Cook <keescook@chromium.org>, ulf.hansson@linaro.org,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, anton.ivanov@cambridgegreys.com,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, maximlevitsky@gmail.com,
 richard@nod.at, deller@gmx.de, jassisinghbrar@gmail.com, 3chas3@gmail.com,
 intel-gfx@lists.freedesktop.org, kuba@kernel.org,
 mporter@kernel.crashing.org, jdike@addtoit.com, oakad@yahoo.com,
 s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org,
 broonie@kernel.org, openipmi-developer@lists.sourceforge.net,
 mitch@sfgoth.com, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <20200819131158.GA2591006@kroah.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <4f5a225d-460f-978f-e3cf-3f505140a515@kernel.dk>
Date: Wed, 19 Aug 2020 07:17:19 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200819131158.GA2591006@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=aq3Djs+J;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 8/19/20 6:11 AM, Greg KH wrote:
> On Wed, Aug 19, 2020 at 07:00:53AM -0600, Jens Axboe wrote:
>> On 8/18/20 1:00 PM, James Bottomley wrote:
>>> On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
>>>> On 8/17/20 12:48 PM, Kees Cook wrote:
>>>>> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
>>>>>> On 8/17/20 12:29 PM, Kees Cook wrote:
>>>>>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>>>>>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>>>>>>>> From: Allen Pais <allen.lkml@gmail.com>
>>>>>>>>>
>>>>>>>>> In preparation for unconditionally passing the
>>>>>>>>> struct tasklet_struct pointer to all tasklet
>>>>>>>>> callbacks, switch to using the new tasklet_setup()
>>>>>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>>>>>>>
>>>>>>>> Who came up with the idea to add a macro 'from_tasklet' that
>>>>>>>> is just container_of? container_of in the code would be
>>>>>>>> _much_ more readable, and not leave anyone guessing wtf
>>>>>>>> from_tasklet is doing.
>>>>>>>>
>>>>>>>> I'd fix that up now before everything else goes in...
>>>>>>>
>>>>>>> As I mentioned in the other thread, I think this makes things
>>>>>>> much more readable. It's the same thing that the timer_struct
>>>>>>> conversion did (added a container_of wrapper) to avoid the
>>>>>>> ever-repeating use of typeof(), long lines, etc.
>>>>>>
>>>>>> But then it should use a generic name, instead of each sub-system 
>>>>>> using some random name that makes people look up exactly what it
>>>>>> does. I'm not huge fan of the container_of() redundancy, but
>>>>>> adding private variants of this doesn't seem like the best way
>>>>>> forward. Let's have a generic helper that does this, and use it
>>>>>> everywhere.
>>>>>
>>>>> I'm open to suggestions, but as things stand, these kinds of
>>>>> treewide
>>>>
>>>> On naming? Implementation is just as it stands, from_tasklet() is
>>>> totally generic which is why I objected to it. from_member()? Not
>>>> great with naming... But I can see this going further and then we'll
>>>> suddenly have tons of these. It's not good for readability.
>>>
>>> Since both threads seem to have petered out, let me suggest in
>>> kernel.h:
>>>
>>> #define cast_out(ptr, container, member) \
>>> 	container_of(ptr, typeof(*container), member)
>>>
>>> It does what you want, the argument order is the same as container_of
>>> with the only difference being you name the containing structure
>>> instead of having to specify its type.
>>
>> Not to incessantly bike shed on the naming, but I don't like cast_out,
>> it's not very descriptive. And it has connotations of getting rid of
>> something, which isn't really true.
> 
> I agree, if we want to bike shed, I don't like this color either.
> 
>> FWIW, I like the from_ part of the original naming, as it has some clues
>> as to what is being done here. Why not just from_container()? That
>> should immediately tell people what it does without having to look up
>> the implementation, even before this becomes a part of the accepted
>> coding norm.
> 
> Why are people hating on the well-known and used container_of()?
> 
> If you really hate to type the type and want a new macro, what about
> 'container_from()'?  (noun/verb is nicer to sort symbols by...)
> 
> But really, why is this even needed?

container_from() or from_container(), either works just fine for me
in terms of naming.

I think people are hating on it because it makes for _really_ long
lines, and it's arguably cleaner/simpler to just pass in the pointer
type instead. Then you end up with lines like this:

	struct request_queue *q =                                               
		container_of(work, struct request_queue, requeue_work.work);  

But I'm not the one that started this addition of from_tasklet(), my
objection was adding a private macro for something that should be
generic functionality. Hence I think we either need to provide that, or
tell the from_tasklet() folks that they should just use container_of().

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/4f5a225d-460f-978f-e3cf-3f505140a515%40kernel.dk.

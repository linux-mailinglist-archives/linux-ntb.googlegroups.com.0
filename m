Return-Path: <linux-ntb+bncBDR5N7WPRQGRBC6F6T4QKGQEWGCC4VA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 592F4249EE6
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 15:01:02 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id t13sf1466206pjd.0
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 06:01:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597842060; cv=pass;
        d=google.com; s=arc-20160816;
        b=tDkUV4vnIy76Q4nbAnIw0FZPha0B8VJc7EohFWdlBi4OZ32StAezubwCB0zCXNmDT9
         2cPiZR3hewnlXCMIP2pO3a9f6nmkkttSVD6cSC4r5ZvARyPTF90wHWZtfUTxC9CMuLvC
         MjpmgC4/ue78b4jpvPcMc8785/i044jLciL25fQvyOx/gkL4ak09/pSTeXXG/L+P6D/o
         0ByPQRJyyBe1ksaLXs3dpHO7jSOvqHm3RqktFLkR9eMRL5IJIpMACpuvb/L9kLVInJXr
         q+NdAk4ubBj37qguArxW7KmiCmcaKIQGMKlkr+ySeXu9qwkC2l0whOg1Rfq1sgIfgj2a
         yPDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2j4TcLTYGWLq/JdPUw3U4xizcE67jVaN1n5V+rpwpR4=;
        b=cx5T3biECvnKapjmkIX+J7jrSIIeO9piijvshL4WQlPPRHuOzHQX3eLsRuB5cY4796
         LvTaZheR5SBQYdR9g/rQSX34yIM68nX5EKo4SQ+uURNd6A4ih5TVTJEHvxc4wNfDSZKl
         L/6BfpLeSvz5K33w5P+2GWajyGNI4Yr4VGkIBMcXgTaO+PF5+jEQJ6JG+8q4XO++E+C0
         PiAvSDECH5J6WTbY/9emxoDU4pTL7YFimvhkfrjDIimZ3Tn1ihkAXQ7ymlgpOd/Yf4Ut
         Zyze7p3agrxJzQb+MfiKX0oVOcVVVPpc50pwFfZr3QmGHaGA+b9ycJ4NBde6deGnE4no
         gjqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=ZtDUAent;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2j4TcLTYGWLq/JdPUw3U4xizcE67jVaN1n5V+rpwpR4=;
        b=K6xVCrbabAIxNvjhqFy7qlDMyS+4Z5+GqwnZcMFjrcUfOx16upwzyfIqqin8DjA2ii
         F3CPjn3emYUV8zya1/qCOrD0A87AwCMJerlyN7+naqREILsn4Equ3NCDahaMzEpoAEwV
         N8i/su6hm8FJI/W4TjLKNllUIYkweOu3qREnO+Hlh3WTYMj+BB20Gnp2pTVq4gdDCPpd
         MvDwTxYfTW3syLgVj/kslKnJX/MxJlGEK4dP97jKsyuh+BZgmjlbCGV93JRJ6nuUjOg2
         c+g8f1pZYIVNiYKC5y+wGq3ktt6BlAtSKIF3oA9g9NJS+JtVZ4NeNq5nH4GFyZjcxT5g
         exeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2j4TcLTYGWLq/JdPUw3U4xizcE67jVaN1n5V+rpwpR4=;
        b=FXEk1s60KPaOjoww8QU3gUuhQPfo7HJHz5YqHrexqE9nLiFzEJcF0ZhsLwl4nTxHa/
         ESqbhcxDQ9NMagAqU0PuutVmTILQBDbI9DDRBWcvljxjB0qFhkWdJIGASAQAMXh+hnmM
         jWfs74Rkp/cGlg+Wu0hzzQ7viILRaODMy9Kt2iT/dOSTwKYsHUkCCtgH8Q4B7n9/pbcG
         jwPai72PmZukdv0/MbiClEoMhsmffSO3c2O9ULwnnjU0hjdtSoA0K22AUAo8fwWrV+6Y
         6XeZTDMgwMdRqAxt7kIwDiQhxmsQknElq65aaEyaIPgu5YShDPK16K28IIJGmx7pPVXW
         9khw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Fx7sTU/Lxz8CDv/VNj9IA+cQGHSshskIMeR8yz5AyT4dCqUU3
	hnk0P/voB7YRDAXEjDg41VE=
X-Google-Smtp-Source: ABdhPJx5xIRBI1kX9Hij7i9j3/WHWjrliNPUIhBQfFs+ngsemtiMARnGyr8tELeo4ZxxZE/mXhwEsQ==
X-Received: by 2002:aa7:9a09:: with SMTP id w9mr19119564pfj.206.1597842059790;
        Wed, 19 Aug 2020 06:00:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls6692911pgp.10.gmail; Wed, 19
 Aug 2020 06:00:59 -0700 (PDT)
X-Received: by 2002:a63:4144:: with SMTP id o65mr16429091pga.8.1597842059307;
        Wed, 19 Aug 2020 06:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597842059; cv=none;
        d=google.com; s=arc-20160816;
        b=TWLgPsMvbrwdXsQzIRsdMvRO1erc+aOwsF+OkEhb0NKlz/wMkUNwQNFH24ZLWVIied
         hZlVpHMBPxD6dwWFIK2dbdVjAYuZlU8TEzfmgP2GMZuqui15cWJWp7T3zh5P3XDetG5W
         uKUcV27wMRRncwWdACK9fpntm886AizalehTxY+5dL3K7nnFja+B0Sl8OFCKfYe9gxBo
         P2zyKbZCQd/p3YFAPi3O2WxBredAWL/GwTo8YRNU4fbkFf9fj63PlSmzbesqmfbqTRNJ
         U+94ILc9Q8hI013FSe5jrP8SOT3/PHhJfnbOaqbDTphwu78Vo5niV/PpY2ulZDOM/QAv
         X77Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=qNJVZUa8vOnjh3Y4FbI7cu96rnOZczrpWszoc4OM35E=;
        b=GhkjCVlD8zj0pYxW38HZarQIX6Usg1WmeUsWd76xJ7un1JzNVwCwfb5VWXxTxsIhtv
         7f3WDpRT+FfAHnZ1VPqizlSS+SoFyxiZCp7wSvQJbZRjRRddUaJUlwHe/T32rVyLzDAL
         CfGX/ktdXxdtRBM5yatKiJv3VbSEybF1RDhXp6x93iSM1Zq2hXzyC8wrh7XVI4/CbXNM
         jfrHWfV3aTR3g2uTpK8Wn12TeE3II3ucT1n8O4t0UC7LYBKXerF6gR/iXNoLX6bE3k3o
         dGWeipiaIlVcblmrxGzBma/AI87c0Q07/soVtDWtmSBMLQ+ibu8HA5sDf7NA9e7v+28H
         9T1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=ZtDUAent;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id bk18si147890pjb.3.2020.08.19.06.00.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 06:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id c10so1140165pjn.1
        for <linux-ntb@googlegroups.com>; Wed, 19 Aug 2020 06:00:59 -0700 (PDT)
X-Received: by 2002:a17:90b:285:: with SMTP id az5mr3983315pjb.118.1597842058708;
        Wed, 19 Aug 2020 06:00:58 -0700 (PDT)
Received: from [192.168.1.182] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id d23sm20502027pgm.11.2020.08.19.06.00.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 06:00:58 -0700 (PDT)
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 Kees Cook <keescook@chromium.org>
Cc: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
 anton.ivanov@cambridgegreys.com, 3chas3@gmail.com,
 stefanr@s5r6.in-berlin.de, airlied@linux.ie, daniel@ffwll.ch,
 sre@kernel.org, kys@microsoft.com, deller@gmx.de, dmitry.torokhov@gmail.com,
 jassisinghbrar@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 maximlevitsky@gmail.com, oakad@yahoo.com, ulf.hansson@linaro.org,
 mporter@kernel.crashing.org, alex.bou9@gmail.com, broonie@kernel.org,
 martyn@welchs.me.uk, manohar.vanga@gmail.com, mitch@sfgoth.com,
 davem@davemloft.net, kuba@kernel.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 netdev@vger.kernel.org, linux-block@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-input@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, linux-spi@vger.kernel.org,
 devel@driverdev.osuosl.org, Allen Pais <allen.lkml@gmail.com>,
 Romain Perier <romain.perier@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
Date: Wed, 19 Aug 2020 07:00:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1597780833.3978.3.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=ZtDUAent;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 8/18/20 1:00 PM, James Bottomley wrote:
> On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
>> On 8/17/20 12:48 PM, Kees Cook wrote:
>>> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
>>>> On 8/17/20 12:29 PM, Kees Cook wrote:
>>>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>>>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>>>>>> From: Allen Pais <allen.lkml@gmail.com>
>>>>>>>
>>>>>>> In preparation for unconditionally passing the
>>>>>>> struct tasklet_struct pointer to all tasklet
>>>>>>> callbacks, switch to using the new tasklet_setup()
>>>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>>>>>
>>>>>> Who came up with the idea to add a macro 'from_tasklet' that
>>>>>> is just container_of? container_of in the code would be
>>>>>> _much_ more readable, and not leave anyone guessing wtf
>>>>>> from_tasklet is doing.
>>>>>>
>>>>>> I'd fix that up now before everything else goes in...
>>>>>
>>>>> As I mentioned in the other thread, I think this makes things
>>>>> much more readable. It's the same thing that the timer_struct
>>>>> conversion did (added a container_of wrapper) to avoid the
>>>>> ever-repeating use of typeof(), long lines, etc.
>>>>
>>>> But then it should use a generic name, instead of each sub-system 
>>>> using some random name that makes people look up exactly what it
>>>> does. I'm not huge fan of the container_of() redundancy, but
>>>> adding private variants of this doesn't seem like the best way
>>>> forward. Let's have a generic helper that does this, and use it
>>>> everywhere.
>>>
>>> I'm open to suggestions, but as things stand, these kinds of
>>> treewide
>>
>> On naming? Implementation is just as it stands, from_tasklet() is
>> totally generic which is why I objected to it. from_member()? Not
>> great with naming... But I can see this going further and then we'll
>> suddenly have tons of these. It's not good for readability.
> 
> Since both threads seem to have petered out, let me suggest in
> kernel.h:
> 
> #define cast_out(ptr, container, member) \
> 	container_of(ptr, typeof(*container), member)
> 
> It does what you want, the argument order is the same as container_of
> with the only difference being you name the containing structure
> instead of having to specify its type.

Not to incessantly bike shed on the naming, but I don't like cast_out,
it's not very descriptive. And it has connotations of getting rid of
something, which isn't really true.

FWIW, I like the from_ part of the original naming, as it has some clues
as to what is being done here. Why not just from_container()? That
should immediately tell people what it does without having to look up
the implementation, even before this becomes a part of the accepted
coding norm.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/f3312928-430c-25f3-7112-76f2754df080%40kernel.dk.

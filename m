Return-Path: <linux-ntb+bncBDR5N7WPRQGRBL5T6X4QKGQEMDZPVAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA8824A46B
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 18:56:17 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 129sf15460590pfv.6
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 09:56:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597856176; cv=pass;
        d=google.com; s=arc-20160816;
        b=D06Ug8XfHVMNpBXxSNkpOLvps01ezUirD9qcP7nX14JIH0Wr1DoMxHYmXGsAOGJvjC
         yEFtp5woo1H2tnkMvj3dEvMTVJ/Tbe18vp3rbiCoAAynO/L4LWj9YecFMyDmIa+/+v1s
         MwJW4xD8t5hT4Weo6wNz3Pxl8ZUCrlvOxoYUoRcgPtI6w9/mc+XZvPQYTYMVaSHmPEx7
         YarNBiUnKPEnuWGnWe0FUYNZjrVl9KkHhXEuv8ucGPevGD6F2k4i/R97b+UBWcxjGyob
         CtZWjdDfh9VpM+wJdefe8GA5w48KnMJWNnKgyktiFf2mC9xs5axLbV4IMAdLCKFAXGuP
         m5zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5TDIC59trgrm5xzpn1BYknXaZlbIuiUYjJNrAaDLHFY=;
        b=noZEwsHi/L2SyLsQBU2tmJWPgk+ohsbQlJojBo5UY9g47w3ebjLjtaIbFlAH1RtNKf
         dnIFCAzzKEp5SQpCPJTpVX7GwEi5nESyUyLZT/YfsV/syicjME9lkElJv9biXJWv0EkV
         00QBHkXHPEC9DdI6V9hc3MBC3PNxFBelhuLXSD8ygHUlLSOVqhf0NauQvG0QiXyBNSsJ
         E6Wg+di4RE7NFygYfBm2gYWHcDga/HjOmjEhpMTydtqQc+j73Pw+BwOydIZSue12H2cZ
         NkGyN6C5YCn7LdA3Ha9s2TzMQj6zWDNiXLG+WHKXFIWEZzluia1DXuJdOxOOAAfHhUQg
         H3dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=XsGUJB1H;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5TDIC59trgrm5xzpn1BYknXaZlbIuiUYjJNrAaDLHFY=;
        b=HTAxsTlsH4k2my4hJqswKTf7ah92JkysyzcUmSJFneajM66AH6G0QnagrtCnN0J/kY
         cgP+B14Y81ftYx1nY/RaZaFqAG40Frw8XAYd/OJKhVjyBjYVBDeovJ9OiRsDOaqyKOXx
         nsmolW3mxphvQL1t8Js3kqNeNsZRTIntany2I9Z231teBu9RFfnGnDYEWPR6U/zbhx0N
         BAG+zGvGRXzw5MKvBKf6cL+HJoS5q1GyITv4bkz53VeogUxQclP4IQ6MoywQq8lXc4qf
         UsJUEgqFIJNUroI/AAQcNALIy5KMyQ31l12bTgxCsE/t8S6pk0Ln/IdNBYfmccS4oIup
         /kJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5TDIC59trgrm5xzpn1BYknXaZlbIuiUYjJNrAaDLHFY=;
        b=CA7HRQ8gpBNInmUujqLCs1Thm5yjBxIAc6gRo3t4tXH/fewSFd3eACnd43ZIL+sfHo
         F+IfBEiCmlEGh0QiNmo/FxHaLQ6IFmbveuEgj3h5zEuszFuGOWvI4p32ou/tsLZqhN/n
         mRhWEZQ7gE3Oe6RasxITWujZ7BCgJZq6Rh0MJ/5T8Z/vAA5svh17XYtWaHCoQigJabp6
         PR8SyXK7+DnTQywIiOB40XwE9+djVx4xm7QTf+ybd2nZnhYVVRdexYxo3kvu/DYNyaSS
         mwCMIdgdjxayaPDkiPYi1hUBaGWSBlpvM8mlJTGADfSDss7+24+l7u9AEjZqVIX+qL0q
         GYPg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532quQOi5FiXt8hE0FVbteiQu9EwXvmqaS0sks6U1yyr/AeT6/+0
	Ka3dGWFIkQA90s8752s3olY=
X-Google-Smtp-Source: ABdhPJxpl/XubPpjdnXHwORkrGOXeB84ellFBMeqwksBtDg1QSqRILjsu8Kwn2+usEHfZ3bHjZ/N8A==
X-Received: by 2002:a17:902:6a8b:: with SMTP id n11mr5921970plk.75.1597856176007;
        Wed, 19 Aug 2020 09:56:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:534d:: with SMTP id w13ls6876477pgr.8.gmail; Wed, 19 Aug
 2020 09:56:15 -0700 (PDT)
X-Received: by 2002:a63:5d3:: with SMTP id 202mr15061075pgf.344.1597856175428;
        Wed, 19 Aug 2020 09:56:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597856175; cv=none;
        d=google.com; s=arc-20160816;
        b=TSAVZDoPlu8s8AyzbVog7AjPRTlY+1GBL58vytaraPkjrCAoySuoycdiaGbniKm5TD
         XY9Uild589nzlftPddJaXSmA0UR9V1YQj2DAz3MyD9YJfMPR6eloACSFQen4zJa0COdu
         oR0MVK8PeF3HH8rLRZf5fGd7WVbcNH0Nx5p9/liGExuiKvq5WdghLEcc+r5bneo7CKkj
         DB5O76JWsRdEZ6fyjQn5nETjOmW+PVjxr1/r12/e7IQZtA+UWT9Ra3IOtvMdTclfe6El
         RENWoF1QZAICPIRtKyMAFxQPUQuYjbGmyMnhR6ta5BS0Po+qyC9bFojInDDA1HuaOkaf
         DK1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DyPe34DueaqLfEcDqZqm300kn/odPwqy1uJt22bP0Z8=;
        b=FekkkEmim1mD0I4zvjUHmW9ACyRzXKT91ejt+C64VKkLmqqH8F9fMQMcwBA5fTNed1
         KWAzU1Hn/kZFFyX72dAmjOcOdwXz6eWRDbsuN41Y9sYcrI4vGZSXVLV3JfJ0Xi/sWuPR
         MZvlATlhlv+pyaV56VoRXAp373pVz7yqp+XFRAKGNiMAP8aqrIxdsZ/8ryhK+aq5SIiZ
         PPXjlZ44rBO1jITUjOvqElAsYYnGPNsvPkCUpOBorMGlbvVxZDR6Iaip56Ydcyx7cVoN
         4IgjdMSnL6g0YNUui4vw06WFq0rEKr4E3EGdZYQEWiyfoiSxIXHGFAY5Yw+PKytr4jmZ
         kSXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=XsGUJB1H;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s76si1207269pfc.1.2020.08.19.09.56.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 09:56:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id e4so1391657pjd.0
        for <linux-ntb@googlegroups.com>; Wed, 19 Aug 2020 09:56:15 -0700 (PDT)
X-Received: by 2002:a17:90a:f2c7:: with SMTP id gt7mr4669042pjb.204.1597856175023;
        Wed, 19 Aug 2020 09:56:15 -0700 (PDT)
Received: from [192.168.1.182] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id w23sm25765910pgj.5.2020.08.19.09.56.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 09:56:14 -0700 (PDT)
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Allen <allen.lkml@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kees Cook <keescook@chromium.org>, Allen Pais <allen.cryptic@gmail.com>,
 jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 3chas3@gmail.com, stefanr@s5r6.in-berlin.de, airlied@linux.ie,
 Daniel Vetter <daniel@ffwll.ch>, sre@kernel.org, kys@microsoft.com,
 deller@gmx.de, dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, maximlevitsky@gmail.com,
 oakad@yahoo.com, Ulf Hansson <ulf.hansson@linaro.org>,
 mporter@kernel.crashing.org, alex.bou9@gmail.com, broonie@kernel.org,
 martyn@welchs.me.uk, manohar.vanga@gmail.com, mitch@sfgoth.com,
 David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
 linux-block@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-input@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, linux-spi@vger.kernel.org,
 devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2b1a5987-9b54-d63e-b3da-d3024505776c@kernel.dk>
Date: Wed, 19 Aug 2020 10:56:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=XsGUJB1H;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 8/19/20 9:24 AM, Allen wrote:
>> [...]
>>>> Since both threads seem to have petered out, let me suggest in
>>>> kernel.h:
>>>>
>>>> #define cast_out(ptr, container, member) \
>>>>     container_of(ptr, typeof(*container), member)
>>>>
>>>> It does what you want, the argument order is the same as
>>>> container_of with the only difference being you name the containing
>>>> structure instead of having to specify its type.
>>>
>>> Not to incessantly bike shed on the naming, but I don't like
>>> cast_out, it's not very descriptive. And it has connotations of
>>> getting rid of something, which isn't really true.
>>
>> Um, I thought it was exactly descriptive: you're casting to the outer
>> container.  I thought about following the C++ dynamic casting style, so
>> out_cast(), but that seemed a bit pejorative.  What about outer_cast()?
>>
>>> FWIW, I like the from_ part of the original naming, as it has some
>>> clues as to what is being done here. Why not just from_container()?
>>> That should immediately tell people what it does without having to
>>> look up the implementation, even before this becomes a part of the
>>> accepted coding norm.
>>
>> I'm not opposed to container_from() but it seems a little less
>> descriptive than outer_cast() but I don't really care.  I always have
>> to look up container_of() when I'm using it so this would just be
>> another macro of that type ...
>>
> 
>  So far we have a few which have been suggested as replacement
> for from_tasklet()
> 
> - out_cast() or outer_cast()
> - from_member().
> - container_from() or from_container()
> 
> from_container() sounds fine, would trimming it a bit work? like from_cont().

I like container_from() the most, since it's the closest to contain_of()
which is a well known idiom for years. The lines will already be shorter
without the need to specify the struct, so don't like the idea of
squeezing container into cont for any of them. For most people, cont is
usually short for continue, not container.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/2b1a5987-9b54-d63e-b3da-d3024505776c%40kernel.dk.

Return-Path: <linux-ntb+bncBDR5N7WPRQGRBKF45P4QKGQEFGMFEZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E05C2476D0
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 21:44:42 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id k5sf10461802ion.17
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 12:44:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597693481; cv=pass;
        d=google.com; s=arc-20160816;
        b=eJ2cjRmBkJ+KWqoNQVFbVdwYzSJyg4Q+xoRuj6NS9Nol8o8nNdZev/Mbb+QZ/5hzxY
         hPTYk8np/gkIVV4y9GF5kTAqfPkP/OLyo0H0CbMnMaQe2FOhfw8UBUlTRH6/39BbnBlG
         mxuNoIn2UwYmcHYnTPGafJZL/KKGV2DoKI6ImeYhfVzDhTnFf1gRvrTlHu3GByHFhqe1
         A3WOGWpz29+3KHq9q9SElVe8S0LfDNQBfu3Vco/sxCYeLHqXjQbTB6eS3V1+tHz1oHZy
         Z+KVAcXaG81bdJiYm52OIEUowicrKz6aCJRL9Yc5+s4PF8EsNfZDyIVplg3EFdDG+qh4
         KD3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=jkjj0K8uSTHhvaxiL4XkAU9WMKqn0w+EdmZbW2LJ2t4=;
        b=KMZSKbqAu4uc2j9+eIkw4GxzOsk6zYspdO06nAsysv3+Sp3vnIdgMAuWuJ1QmTdJeP
         giiTWKIZa0DjFVvribOIfcRmQeOYfd2pL/QObYVvNGXl/DjbSi70fc/o1R4MpHoqIUUu
         qYuKAA3R4JOLJK/GX5CPu98GPO9np9XSlbGc45RcqDw2nwICXAB4kDbbGKK/HmSaumFR
         QrRClbTMHgHMk6pzubVx3NP/dD5tMJqI/gK6t9nVfxVeEFC9eY2FtUmWLKlhWzefqI47
         jKSS/1Vdm+opwJ+UeRqwcTMT8Ikvnljl6OGg+A48yiH22CVybYMab1rbiQauq5onUsFs
         7KSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=eDQAepLd;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jkjj0K8uSTHhvaxiL4XkAU9WMKqn0w+EdmZbW2LJ2t4=;
        b=gwrnZT+UrWBG1oFlmo3DYar53ZCdkJBER4/W/GIohCFIw0fpHBqTTwS8KZQD2ZgmN+
         aojrHonL2JmFcW93W+pwzffx+1Ioef8looV+DejFlJdZ3H9ebg0QC+JsAtdyoOJyPnbz
         4MDF3iJs5aN4Q45g3zKpU7P7P/QYCq9FLfrrjTFrLvmly3rRIB/exQIgptcor6gnJv9I
         mRLbMDPGQYaUqnbxbvQeEZdzCyaM0FJqP+H39++bHpzpR4NukSYm5Bpf0PSOLlviWP5B
         6bd3iQKizXDH8sJXpBlFSUyXHcLdNu58Qg46m+EApEZGLhevLQ8lYiWCUhtkWaof33GW
         4FyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jkjj0K8uSTHhvaxiL4XkAU9WMKqn0w+EdmZbW2LJ2t4=;
        b=BqjZSjt4lTOwr9sDlCRW0hd/18HWvGMieDl4ySW/+CPpyfOcKPel1kBQ+azR05NgQL
         Pza9LgbISE+LNVHd8wqzNWNrcGCf2EQ3KRA+qmFIAsYYeYyjBs8nxMOKgMTzJjqpjShY
         yOuFB8zwE74Q6T8UL3o8UUxYnXSfYCrtwZ6FVNAzWJdOb4ASQp5rPMCWJPZryIA82cjS
         W6hIZUwGZez5sLd6ss8s0mh+G+m2eLKB8+adBTCtQb/lvpB94miI3Fj3bndDZUCR64Pi
         gbjnFYgA7PAUTc2Cw0ivbA7SB5DpxvIXV65qGY4oHM8YSNR1n/ltpxKHd0KupFeb6iW7
         +dWw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5335zM6oc8LLf+nIEwj6LUerAoFVxZrE1G+9nvxtFBpCXXsnVj/M
	owSUsSkcA1Ky+g0RsAZLcWM=
X-Google-Smtp-Source: ABdhPJxGUBzGvCFU3Kxwyg7yUftmkh08FytufXZ1FVHBZV2vMYVQLnx6/NRoY3jzj68v8x/5PBpn5g==
X-Received: by 2002:a05:6e02:925:: with SMTP id o5mr12886904ilt.33.1597693481072;
        Mon, 17 Aug 2020 12:44:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:168b:: with SMTP id f11ls2330349jat.5.gmail; Mon,
 17 Aug 2020 12:44:39 -0700 (PDT)
X-Received: by 2002:a05:6638:594:: with SMTP id a20mr16234357jar.127.1597693479278;
        Mon, 17 Aug 2020 12:44:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597693479; cv=none;
        d=google.com; s=arc-20160816;
        b=0vRYOrLCwnll7mfzmjnXOHX4bDEzCiJtyfqp7kj1Aikcnej9uc1VsU93xnyCI8CzPz
         B2p1DacT1Owoq0Rne9nLC0ra0g7YyPbItLxg2fmvZwwzXL84jreBNXH7GJEKQvFYFxGD
         mXpJUaOalaIdxNLDOF2rkEmGUw5ZN1FxfVSgnIrqboadMFUilOLcVqjxSBvGmg05kFVF
         LOT62l3QVh3zhfJp/ivCZ34GVeO5Q/LFtVOctLFzcB733FZInztYy25Ll+A/ADhAC847
         sBmyeEhWrZbCnEZJ+pGY/GIsCp+MRfIjNm6CMuJag2CBlfM/NuiYMEVcSOJ0M4KUVZgn
         SYGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=;
        b=EsVr4+fcFDHPt1Wt+su5zNdJiNZ9YrDJmG2rk6RXLIOAfu2Yo2ryDo0SPizt5/IrOd
         HRVJr1FO1yKMs7FDtGwsrPoHdKyz9p9Il+NtEcMo6WU/FqlYDN7YvC9UPxbxCVNYxHgo
         cGxVwpNHgZrKrsInhAvewX81kwmxAhjwSHzQKKNHJkgX0fhguJTXuRFhv6AnSSTYON+B
         BcppXg0ES+95LuBkRw1BLBQaQg0XZkErcoboGMSCe3srGrShK7w5+bcG9TVgYeyjvw14
         Iwn4E/QFe/AwCj9fg3/7JfHIAkPvVIJL/wo4bCaStOkdX9O+ERMw9yQS+8ERLTS29b+C
         OpYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=eDQAepLd;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t6si947866ioi.1.2020.08.17.12.44.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 12:44:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id m34so8593372pgl.11
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 12:44:39 -0700 (PDT)
X-Received: by 2002:aa7:9833:: with SMTP id q19mr5334525pfl.240.1597693478569;
        Mon, 17 Aug 2020 12:44:38 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:bd62:5cef:d7f8:5bff? ([2605:e000:100e:8c61:bd62:5cef:d7f8:5bff])
        by smtp.gmail.com with ESMTPSA id y128sm21118788pfy.74.2020.08.17.12.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 12:44:37 -0700 (PDT)
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Kees Cook <keescook@chromium.org>
Cc: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
 anton.ivanov@cambridgegreys.com, 3chas3@gmail.com,
 stefanr@s5r6.in-berlin.de, airlied@linux.ie, daniel@ffwll.ch,
 sre@kernel.org, James.Bottomley@HansenPartnership.com, kys@microsoft.com,
 deller@gmx.de, dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, maximlevitsky@gmail.com,
 oakad@yahoo.com, ulf.hansson@linaro.org, mporter@kernel.crashing.org,
 alex.bou9@gmail.com, broonie@kernel.org, martyn@welchs.me.uk,
 manohar.vanga@gmail.com, mitch@sfgoth.com, davem@davemloft.net,
 kuba@kernel.org, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
 linux-block@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
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
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
Date: Mon, 17 Aug 2020 12:44:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202008171228.29E6B3BB@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=eDQAepLd;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 8/17/20 12:29 PM, Kees Cook wrote:
> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>> From: Allen Pais <allen.lkml@gmail.com>
>>>
>>> In preparation for unconditionally passing the
>>> struct tasklet_struct pointer to all tasklet
>>> callbacks, switch to using the new tasklet_setup()
>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>
>> Who came up with the idea to add a macro 'from_tasklet' that is just
>> container_of? container_of in the code would be _much_ more readable,
>> and not leave anyone guessing wtf from_tasklet is doing.
>>
>> I'd fix that up now before everything else goes in...
> 
> As I mentioned in the other thread, I think this makes things much more
> readable. It's the same thing that the timer_struct conversion did
> (added a container_of wrapper) to avoid the ever-repeating use of
> typeof(), long lines, etc.

But then it should use a generic name, instead of each sub-system using
some random name that makes people look up exactly what it does. I'm not
huge fan of the container_of() redundancy, but adding private variants
of this doesn't seem like the best way forward. Let's have a generic
helper that does this, and use it everywhere.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/161b75f1-4e88-dcdf-42e8-b22504d7525c%40kernel.dk.

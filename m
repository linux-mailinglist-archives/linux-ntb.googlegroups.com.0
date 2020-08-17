Return-Path: <linux-ntb+bncBDR5N7WPRQGRBTWE5P4QKGQEP2V3MBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EB52477D7
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 22:02:23 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id g7sf8203845otn.13
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 13:02:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597694542; cv=pass;
        d=google.com; s=arc-20160816;
        b=xYHJ+Hsta4iCfZKPnQ07rFOpZSpHBTDXWxuDToJNGgQ4aOjNz1kCxlkesCz6XiJmfe
         FL58HTj4rx6HptsbtMg70MyIANm4OQ8MEz7ivJjEr7pRdrWK8pgyUmEMQj2zN5eYB5yd
         VyaH4IItXdB5zKgKxmkTJgco8mlM/QGcJD7evPm9ftVipnaKX6n4CZaEyCf5mi6Vl1vR
         s8vAQycEHcMzixXJQjTDrRI4tXKVphHEaX+sNMRLsF3G/7uXR5E7mLMDnoYjtqeZh9ZV
         eWBRC2o6sJuyIPWBYdqO+JfPycwLFrQldC6eSecEdbqkss+Yaz4SvRiBOGeB/wsJ99aY
         KBTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=+WR128NOjix6rXqMKtHVfqm8Rr1avXCb6vg7k6u1VKQ=;
        b=rbP+GxG3S/uLjJTn0zcBQfKbHhztgpqd0MeG+5MKj7imUCW1QwFEVU8A7MSOqRgZYF
         KKQH7gJXD6BxWz4cQRq5no2Gfo3o9N7ZnJVq7axPzNdHv8zx6qMtnPbcp64rJoDsZbu8
         AIugHFUaORCDB87X1zFJCX1U30ugrAAQM0nRcc+3oMjZcwKhvSlbzQEA2uh4UCHJCan+
         DoAO9ONcCDdXHepbGlhz1fmNeVaoX1Wv6654IqjuKncu5UOKyDZFiLc+TV1ygORvvMjS
         fAcFV5glQ4hS7319vDydJtZmkf+DPQB0iU2Z/r7kHnbgfZtRa9jVGTNLYbicv059RVYU
         /3ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=aSZhdkNS;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+WR128NOjix6rXqMKtHVfqm8Rr1avXCb6vg7k6u1VKQ=;
        b=pD217dFVuEgbZI2nJrDSnSD5jOhnQt9/YC14REE0j6VXh7/mKnhJa3Jg4RSiBsx/Te
         CfEtpfEWyFxLeeW32r3HfGt/qKWTdSWQs19xXXg7FZQfbQm5nda7EOA4w81y1cIXJrBw
         RzyEBzg5mFkGLO9rlyNSD5b31Nx10/DN/bADZKXE6C2y8vGRzNMGbKxxIf7GZ5H/tgQR
         W7Kv2JGHStjpZdp3TQNJv8NiXUFFPm5OluCrcNzJAOu5HRk5LWNg7M0XYb7FhQrAo3+P
         CGGF+ChvkCfYPaQ4Tyd3MkpWvAMk7guX5rxfeOfY/H48ecxLgjAlJKaS7oMjQYRavAqW
         d6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+WR128NOjix6rXqMKtHVfqm8Rr1avXCb6vg7k6u1VKQ=;
        b=A08HG4Mwnagbf0lr6t3ZbbnCeND9BVIbEquIYO/Fs3n+eVPurKZDmdQ8GCUwlt/EHw
         MhSZO9rk867u0f2eKVefrSgwC0rbC8idCxapJH4cpxRkIyNBLbdO5nPqf3EkJnyMQGqt
         bgKARTf2BXYs4u7M1Jbu7xic8KwAQkScVPnQ+lxsBuadh1cO/fsT963heyj30LjYngmi
         fPRlBd+LZ/JYiKtpoy3Tw6zcGpNV0zfJsxMOJ5igINASOyC6k4MGf58qxO1SqsR50Zfx
         gaS3FwmZPkZFgcpOUjlGsbMOuu4jf+TR3bQsZBVmzo4m0ESty3J2UuLENBeKzlESg3fT
         KViw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531EgU8Hz/R+6E1IOa+GnXEZEEbGRQjng5uZGstJmvBK9SjVgXqB
	Nagn0YhaPmqZjQ/9pGZ2b88=
X-Google-Smtp-Source: ABdhPJyLb6ZeJElnirYoL0vzy2J4nRSrx42XWljSYCBlYcJYzCsUhUjJPLTzrtFkuY+wHSKVnn6xww==
X-Received: by 2002:aca:fd88:: with SMTP id b130mr11181910oii.40.1597694542731;
        Mon, 17 Aug 2020 13:02:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:42c5:: with SMTP id p188ls3575399oia.3.gmail; Mon, 17
 Aug 2020 13:02:22 -0700 (PDT)
X-Received: by 2002:aca:4c54:: with SMTP id z81mr11064835oia.115.1597694542292;
        Mon, 17 Aug 2020 13:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597694542; cv=none;
        d=google.com; s=arc-20160816;
        b=NVwezD9+FDqwESthGiLpqaaMfKdY7KHn/yYDznH98CP68M9DDooDSRCqee2Zttd6gC
         ZI6kORy2+q+jVAtGiRug7nSnitj0vf9hw4ih1NnbB+repWYsOqY96NeOXN+BHc4xy9hG
         VD4jT2+K4jEG7xL7ukaL8dzLIj6mSdbRHY06ZLxqzbe3oFdmmTdNB1zUWCHSfn73dWza
         FXn/qBZG1ApGxBXaQiua+LA1S4hzKxU091P8ulua6M6EAWkAkaEka5r4/nqyGcfksKOC
         YHJ4djWjUXa3l27iV+S6ZEzNoSI6tDoBUPQ4/m7oWLZBRNkGGDb4iDM4+UetOSG3ijyB
         eFGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=97DJCt1f0pZE/lulXm7MIIWiJdssbmLKs4FWP+jsWew=;
        b=l7EJDVUp84DzX49Ns4tOyLO+NH1SSXC+uuyOi8gQlHFavctw2dVG8cANM2nueK76bE
         8N71wl/Hdmoy9aokWF1tMPzSKMGz21Cinml7WqzdJXrUeSTYqFCXufk8wLg/pLl0l/4W
         g5oThM9z8arvgsv5Il0xHLyxMqXK+71kVojkmSk82rKcRx4zh/D5SGNCGZi6oCBcMvj+
         eiEMVeYuTIc+yvcDwKSWB9hLqKXwkFBtksF8lxrHQj0qPm2s3rgzjqKFRoR/r/431Hnk
         d01ijPCbL5+U5WmbKTYMO3xz46tIfsvyPbhcI2iEq2fwGwL67VeyZUCKIKRL/D0e4eA1
         e0qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=aSZhdkNS;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id z12si901461oia.0.2020.08.17.13.02.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 13:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p37so8628734pgl.3
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 13:02:22 -0700 (PDT)
X-Received: by 2002:a63:d143:: with SMTP id c3mr10873272pgj.306.1597694541448;
        Mon, 17 Aug 2020 13:02:21 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:bd62:5cef:d7f8:5bff? ([2605:e000:100e:8c61:bd62:5cef:d7f8:5bff])
        by smtp.gmail.com with ESMTPSA id c27sm18199498pgn.86.2020.08.17.13.02.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 13:02:20 -0700 (PDT)
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
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
Date: Mon, 17 Aug 2020 13:02:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202008171246.80287CDCA@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=aSZhdkNS;       spf=pass (google.com: domain of axboe@kernel.dk
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

On 8/17/20 12:48 PM, Kees Cook wrote:
> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
>> On 8/17/20 12:29 PM, Kees Cook wrote:
>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>>>> From: Allen Pais <allen.lkml@gmail.com>
>>>>>
>>>>> In preparation for unconditionally passing the
>>>>> struct tasklet_struct pointer to all tasklet
>>>>> callbacks, switch to using the new tasklet_setup()
>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>>>
>>>> Who came up with the idea to add a macro 'from_tasklet' that is just
>>>> container_of? container_of in the code would be _much_ more readable,
>>>> and not leave anyone guessing wtf from_tasklet is doing.
>>>>
>>>> I'd fix that up now before everything else goes in...
>>>
>>> As I mentioned in the other thread, I think this makes things much more
>>> readable. It's the same thing that the timer_struct conversion did
>>> (added a container_of wrapper) to avoid the ever-repeating use of
>>> typeof(), long lines, etc.
>>
>> But then it should use a generic name, instead of each sub-system using
>> some random name that makes people look up exactly what it does. I'm not
>> huge fan of the container_of() redundancy, but adding private variants
>> of this doesn't seem like the best way forward. Let's have a generic
>> helper that does this, and use it everywhere.
> 
> I'm open to suggestions, but as things stand, these kinds of treewide

On naming? Implementation is just as it stands, from_tasklet() is
totally generic which is why I objected to it. from_member()? Not great
with naming... But I can see this going further and then we'll suddenly
have tons of these. It's not good for readability.

> changes end up getting whole-release delays because of the need to have
> the API in place for everyone before patches to do the changes can be
> sent to multiple maintainers, etc.

Sure, that's always true of treewide changes like that.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/df645c06-c30b-eafa-4d23-826b84f2ff48%40kernel.dk.

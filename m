Return-Path: <linux-ntb+bncBDR5N7WPRQGRBJEZ5L4QKGQE5H543JY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFCD2467C7
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 15:56:53 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id h185sf10899973qke.21
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 06:56:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597672612; cv=pass;
        d=google.com; s=arc-20160816;
        b=GOgQqP7ul114ardvUv2F4T/zvLnDhvIVMp4n3vH5Ebx4MuKPQVrev+gT2PP8w30nR2
         ZzVscJrOilSwQWA+HdFg2PZhR5/RoPuZ5VXeTgrAARJnsaeWDVVBGeVMVtb06gJ+263r
         pTyL+NJ/zylL0Eze0GtScjW588NXMz0PcOBnhtBlS6bggWcbdPpT683X/W4tjbN4usnu
         EjnRYoM8zOMyb3NbX11afzQhUyjFIobgCdMtaSvFH34qkP7KudtS4cN5ctjx9ayfLTKg
         5FO+sSBqmHiAjl/M9y9Sabvg3yM8qT9cgaYo+PdcX0D8GGRfwa0EpmMi1Ul+LHeweQ2c
         RZrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NvcHGRCTtNmv7xKMbL+mKUvpiW2XBfUX59dKPho6OFM=;
        b=g8k3WagKJ2B5YpGmH2XS3kkXsEFPsTL4S60JA5/CnQFHh/4EXLy0Rw1TZjAunDkEsW
         avsMa5jBRZGQQFyzgT/yCcbIKkmn8AksCtgkjMu0jrbotBBuWvQ2TV2eFnTYpFPvg8Tk
         DUOV75HIUy29rcz8gXgOrtXOWj7h7MhhGAjG9pXlRiTcrJiPCvuJ18D92L1NgtRUfTzr
         SlcEqxuK/aykjDSs+J93vLGX8X7NIHmKndaMe7oQwlD9Xx8SFGMNrK9D3UBbvPP8i7HD
         Xv3vM3QmJ1bw1lM5IbxXbJi0+zBmWpu3Dtx467CmW49MVdJ+pQxiASEM5uwVvlFjtOqr
         vVVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=NhI2wzO1;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NvcHGRCTtNmv7xKMbL+mKUvpiW2XBfUX59dKPho6OFM=;
        b=kegZTwsf1dKJlG4ssx8tJy7iMJK/m8OurTXnUEu9AMYPQmd3tkZN1Br/zQbUIo2/DG
         r+hImLlF//20w1IiZHZAWIn1vb11D5YMCKDtKjDJdmci2DEc36MU0NEREmBopQjX8AgY
         z9S20UkKd1PnGy2e7+TUPAiThtbsqd3wc9Qa3sWI1COxHPAcX+NzMoDu86v5UdAkY0rV
         kHY70VaAzxjgTXxQUSPZvESEdxDmnuNt1kYRRTr6Yh17LgCphB70434V/25dRqWuSgzj
         iRj+si0OeqM7cDFi6E6hXr8iv68yg0QNk/aEy407FHsQ6jlZF/yN69PrgpPW4TxHftFA
         VJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NvcHGRCTtNmv7xKMbL+mKUvpiW2XBfUX59dKPho6OFM=;
        b=h4Tl5eVlQ8wIrPhlOaFTuHR8HIQgqNUTilZIFJJ6azwrUPpURxV4sot803cXZs3VB6
         ZK9nSSeAxd4Z+7nIQ0cCH7xv8bOGDlvnE08PRM14v+UVZhmQ6fQ5AiBCTZJJj4srLwEW
         rvHiJWuTNLcuZJAxzvfqnaeDW/+z7DC0o00vVDfWAgzbHPuJ0Bg2jHp2oazDbwXsiL/+
         izHmRIuFcPaRxmqXk6WwqRNdX/OldOcSkhciseS4uinv6uMIEnqNL66C1hheLB9JTutE
         NtPBSAI86CrXt2afVKW87uM2fLeUDAkZF25WjvrnlmKlnQBKkrBJA/e2yWmt2uc0gVEk
         hdPA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532dFbRnVQ84Z9JDiPAqBaVY8SNtNcKJfaevo1tShCTRlGLUoIfP
	KkyZcaKm7uCwo/NgHxz3L/s=
X-Google-Smtp-Source: ABdhPJwcYooD7K8l2SqHhg14ov29KdSJvcvm9YVPKqnBRgFrE6o/AtRtBlHq/MzeyLqrE2el9L2Crw==
X-Received: by 2002:a37:bd46:: with SMTP id n67mr13208872qkf.190.1597672612692;
        Mon, 17 Aug 2020 06:56:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:34dd:: with SMTP id x29ls6545965qtb.6.gmail; Mon, 17 Aug
 2020 06:56:52 -0700 (PDT)
X-Received: by 2002:ac8:47c4:: with SMTP id d4mr13863833qtr.43.1597672612269;
        Mon, 17 Aug 2020 06:56:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597672612; cv=none;
        d=google.com; s=arc-20160816;
        b=zCwQcPkgnTdLyonrXWBfSq+CU1OAeUoV+LN3FRyDjIFyoeNXUZh6EpiIH3z1GIZfq/
         AROVwojaZnbt2WIyUnjYSLVKNvIkn2etM8DJ1mllX7C+NCdH2aRO0WLUPNqCoSLDu0d2
         1STEidMTw2X1DNrvYlgr6Gbbyof9YChT/kf3+b65Tm+TlpCXSZdtFmB3PG15Lkj6+fnN
         KOpQnFDc01i8+ipNeKNVECBvTqKR1jXl/X6HXJkqTGbPIPIcrOl97PwQiM92k4xPc32B
         iKZ6czxu+S0Dxcq8KbHV05xw2OzuXd+g9Pm7ozwMU+T+ym4HZqMegbYLKQaDzXn5HOTB
         Rw6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=EwBPUmMzjIeHY9w/IO7ylAcRHQqFTujUKmssL35PKKE=;
        b=bLqO4ubosHvvF3mak3c0Osh3TgTBUg36ltdURMEg3n5iwuNr2eGpLqybPyHQp9z72L
         BYv6SCpIcY9uKQ5D721ycjB5sbI+jhZf6o/dSixzqT4Q86awHIal9A82qD25LKPoTouA
         tcYHgDUCPFNS0qc0FHpqxOsmqQL2ODSZaLc2AOTezNy6cvBpNa2U2zZU/gbrIxUfkKiH
         EObBy39DPfz/MA9GxqbWrxmQ51tmRvHYMr8V7JmXzaUWbYBbD9ep9pDL/nzcIT2udH4l
         IDvkBlgKYiWRL6Yivt1UovjRl8LAeM+9XpFoy/qoVtmX/pl80FEhTskZGPQ2v1RcLU4p
         JbfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=NhI2wzO1;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id b21si923077qtq.1.2020.08.17.06.56.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 06:56:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g7so6428703plq.1
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 06:56:52 -0700 (PDT)
X-Received: by 2002:a17:90a:5aa2:: with SMTP id n31mr12383701pji.33.1597672611292;
        Mon, 17 Aug 2020 06:56:51 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:ff2c:a74f:a461:daa2? ([2605:e000:100e:8c61:ff2c:a74f:a461:daa2])
        by smtp.gmail.com with ESMTPSA id y126sm5565062pfy.138.2020.08.17.06.56.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 06:56:50 -0700 (PDT)
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
 anton.ivanov@cambridgegreys.com, 3chas3@gmail.com,
 stefanr@s5r6.in-berlin.de, airlied@linux.ie, daniel@ffwll.ch,
 sre@kernel.org, James.Bottomley@HansenPartnership.com, kys@microsoft.com,
 deller@gmx.de, dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, maximlevitsky@gmail.com,
 oakad@yahoo.com, ulf.hansson@linaro.org, mporter@kernel.crashing.org,
 alex.bou9@gmail.com, broonie@kernel.org, martyn@welchs.me.uk,
 manohar.vanga@gmail.com, mitch@sfgoth.com, davem@davemloft.net,
 kuba@kernel.org
Cc: keescook@chromium.org, linux-um@lists.infradead.org,
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
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
Date: Mon, 17 Aug 2020 06:56:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200817091617.28119-2-allen.cryptic@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=NhI2wzO1;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 8/17/20 2:15 AM, Allen Pais wrote:
> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.

Who came up with the idea to add a macro 'from_tasklet' that is just
container_of? container_of in the code would be _much_ more readable,
and not leave anyone guessing wtf from_tasklet is doing.

I'd fix that up now before everything else goes in...

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/b5508ca4-0641-7265-2939-5f03cbfab2e2%40kernel.dk.

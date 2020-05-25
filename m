Return-Path: <linux-ntb+bncBCNKHSV6XQFRB2NTWD3AKGQE4YYQUZA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD08A1E14B2
	for <lists+linux-ntb@lfdr.de>; Mon, 25 May 2020 21:18:01 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id y139sf3612174lff.4
        for <lists+linux-ntb@lfdr.de>; Mon, 25 May 2020 12:18:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590434281; cv=pass;
        d=google.com; s=arc-20160816;
        b=BkGZeCYzf/rDZe5j6tZtPCH8r/QMsO/YOQJ/HglOXOHbWb23dI6Am0rnugPYHIAVtO
         go9QCgbbXcIeWcstL6U4FT89fHcWoYC/RY5FMoDBehtcEcBiigrYLYGZ2uOuj9bI4yi6
         l5puFgDhUVCl/jBO025UP2ih3oLnTZiU5pUDDKFXFJxs34brA5YfT0hVVq/8Lj13W535
         rueefeUfp7M1vfl9YmqqDQdDkDpJnX3deWb9ji8Mu7GIOKGRPQStgrc1ynA5CTYtvf+/
         hpUyaq+5U+0b72eX/QLQlz12YbOfgXRIWaZ8Yvp8sYaaQrxwuqpcHsYkYKR3jmFJLad5
         46Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ceFk89i6FrAfz/WqmozX3mH1Lg3QVZDfSyeUVr1pSLw=;
        b=Sin0FQ0hXWXk/HPbZxgPwvwuNCpJqVUCXxpg/NZqtrlvUU5J7M74U5R3qr6SLCrFZM
         6ssCyg1bHcXvJYLmjOAJsF8ailqMjNo9t6DRj3C2Qcl3QGBFsY56M5pXdjQkJ1PF63g8
         rqyWYbRzunTg0d0GrhdLmyiAXMOg3h6DjpDbkMLb6vlDE5s/LaBJJBo1iyEKcLs6XR19
         73l50Xmtb+BRApgYh6rh9SLCqWpe2u+CxNYSjQXGuc9Wuf9wQMFKDEO3sAWD/oZWNftx
         x+iADJZnSOJ8YR9rwNK8yTH53adv8bxfcOm0sqmCxvO4nw0+/6rDKULILmwCZ71BgIag
         nlIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iSt7reos;
       spf=pass (google.com: domain of allenbh@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=allenbh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ceFk89i6FrAfz/WqmozX3mH1Lg3QVZDfSyeUVr1pSLw=;
        b=KDthXXoWIXx8ul9PCwM4p0zgZ4WlGAhPcdDX5/yM+LsN3vXHb6nia8pD0Gfw7XVsX5
         RHle4UtcIBvrMhxlJEDNOHtO+f6jUxbUwMeKpScnqv2iTfAr4zt12IrqHmrdxLSPz9K+
         cPFxak3yVpkQx8D8w4gAP8R5ovPebEB4i+sBOh4zwscAYSb4sqDjmE15iTCNvf7GC44y
         dJy2gVzDx+79IAWbuz6JDhW6jldvCYbdSyAcQR8ExWEaJT7Fbt7q8FAWbdvyEvR86ZUw
         NR/Xkf3/ZCs59RVgYvGevvBF8Z8ehF3upQ2wblDHY1xztKgGi27n7meC4m8t25ph1+Je
         QQZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ceFk89i6FrAfz/WqmozX3mH1Lg3QVZDfSyeUVr1pSLw=;
        b=pdNdCMNFP4F4denEfvQx/YbeQUaZDaYpF3KKv0KDtG/+Sq4VKR6Eedt5FpFZ5/uIgb
         S2hnG/44rZF97p72K/3wc56C2FaeCK8WYOC34TlUzv6TXYbagM2YLOe6gWJ9vYJ7OTiZ
         JOMLtt4ilIFgAO0gE47dyYIUlIcbPm/ydC/m7mg7jjzm3Th/eNOQZNPI6CoqWOrHFYH9
         EZc1/Bj7RGWiMlIoVREXFzKDsubCjrgDbw2R9Ad/iCNu8npFwLM2VRW+ygKxy262nvGQ
         Uqc4WkesKPkh5tn3rD+Pl5vcV7PSdCfS/k8NMti/7NkuAYDsR96koo7JIQwZHZPrfsyN
         s3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ceFk89i6FrAfz/WqmozX3mH1Lg3QVZDfSyeUVr1pSLw=;
        b=JYfbaFtvnTBqMPHskzmunX8/WBTn1dIbUE1wJ8kv5mYFeDRHjZaqenGtoLYiCg66Ey
         D6fR7JB/5OyyXkYb4gcggh2eqDmU0xiozxLWSBL6GqpG2Ue1O+rUc6zVewIlkEwZ8/8Z
         mU5CDPPfC2824jODofAyPlNRJW5SEWnWD1S1A8eqZd48EpD4cMLt6COm9YwjIOIaPLHi
         coC9byaHWtyXbp1SNH3q3Ynh+quwHPaH7L0cHCjR6bIkhwbhBub6HQfnQsxT6Nrzaami
         pxvrwy5QQj7jqIPA0xayRjE3t16mHU+IhCSYrIq2ac/q+ZJt6g19KLSr6nk+oU9b/fea
         sNqw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Pa0aN2molF0yEY8wZ0bZbRAVWI2GRrlE/QoBPmsMiPf+keL+j
	cYOuI4b0e5lIoExUtZGX0OI=
X-Google-Smtp-Source: ABdhPJypuJX3z1IhLTJ0xoYbt09QFPLXyGuZKKecW3GSpbNE8deW2Ods+nB0ed+D90nXpbseO8TUng==
X-Received: by 2002:a05:6512:3291:: with SMTP id p17mr14851121lfe.41.1590434281369;
        Mon, 25 May 2020 12:18:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c7d6:: with SMTP id x205ls2433096lff.0.gmail; Mon, 25
 May 2020 12:18:00 -0700 (PDT)
X-Received: by 2002:a19:6a09:: with SMTP id u9mr14959663lfu.65.1590434280848;
        Mon, 25 May 2020 12:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590434280; cv=none;
        d=google.com; s=arc-20160816;
        b=NdQY4feSosKke043FPuC0jUuo6mlYpR5ekYOwOStewrKdxhr2q5bZhfFxUdYwXKIke
         G3XDP0OmxWA9S9VwjylLU+MBGzChgrtmR5xQD5kIBmYp4lkBeC5Hg9cDjbey8Rt5qarC
         e3vZgLuKnbF7yGC5c6DCggLXpJ37QEQnPC64S98pF5JHUCV9luvCDp0eo0gGo9Xv5V1Y
         hHLzWrU2atRvrqPbLl5WEiR4q85M3mtMZ0mtCdu1mhxFGLBKQ9iXd2skUNYqj4yHAwt4
         IdlNvwSe+Q+YbyGNe503k/bfPyIfg/5uwGpfhr81pCBqHCSUySIVGXTPNT9r9LzoWQdx
         3Bvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yfEe/ZTkU/QJAVnI++Rj7jesWNtn9a+oTAXDRbiny+M=;
        b=GD1cJmd5o3Wo5O5Gs0DbD9Eu1PNB36EpCpPBRfTk25b9d8d/DV3kY05msiBFzyuMIP
         z9KK9CNdExK5zlfAnUZSjGCBk8iK1Drcjoq3xMDIFpXkC+9QDnrCbYI3cMZrVsGoE5cD
         yYcGwef7q0byc+Gf3jYLQ4/sE3SiDSZHNJP2rQMuhsGH0p86SHQB30qpuuBpfxg+3X/o
         Me9PudlZloflPRJsLPAvdjQDxBJ22BVbsoqsPIguQkgAzcDUvpQSY0FTCzuX83mzvJ8t
         JI7zs6g00x3PSBj6RJd/BVscESYCtvH36AyUCVaTVKB4/Nhygqd+HLAJv0TL2PK03/t8
         tLqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iSt7reos;
       spf=pass (google.com: domain of allenbh@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=allenbh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id c10si515861lji.1.2020.05.25.12.18.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 12:18:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of allenbh@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id u12so931001wmd.3
        for <linux-ntb@googlegroups.com>; Mon, 25 May 2020 12:18:00 -0700 (PDT)
X-Received: by 2002:a1c:e40a:: with SMTP id b10mr6713017wmh.41.1590434280354;
 Mon, 25 May 2020 12:18:00 -0700 (PDT)
MIME-Version: 1.0
References: <ca1ae048-bb3d-4aec-8d89-17178734f097@googlegroups.com>
In-Reply-To: <ca1ae048-bb3d-4aec-8d89-17178734f097@googlegroups.com>
From: Allen Hubbe <allenbh@gmail.com>
Date: Mon, 25 May 2020 15:17:48 -0400
Message-ID: <CAJ80sav6-3OEYp3wTUQ-nc541-Zzb3dNCxnXaLY4x7AjLn=tug@mail.gmail.com>
Subject: Re: Using NTRDMA with Intel Skylake in b2b configuration
To: Anubhav Guleria <anubhav.nitsri.it@gmail.com>
Cc: linux-ntb <linux-ntb@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: allenbh@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iSt7reos;       spf=pass
 (google.com: domain of allenbh@gmail.com designates 2a00:1450:4864:20::334 as
 permitted sender) smtp.mailfrom=allenbh@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Anubhav,

On Sun, May 24, 2020 at 5:37 PM Anubhav Guleria
<anubhav.nitsri.it@gmail.com> wrote:
>
>
> Hi,
> I am trying to setup ntrdma(https://github.com/ntrdma/ntrdma-ext) with Intel Skylake b2b configuration and Linux 4.14.178.
> Following is how my memory windows are setup:
> 1) MW[0] (BAR23): dma_alloc_coherent
> 2) MW[1] (BAR45): memremap

It would be interesting to know the size of the windows, and any
module parameters used with ntb_hw_intel.  The last memory window
needs to be at least as large as the installed dram of the system.

> Further, what I understand that in case of MR registering there are 2 steps[ntrdma_reg_user_mr()]:
>
> 1) Call ib_umem_get() to Pin and DMA Map userspace Memory.
> 2) Then, prepare a memory buffer in a NTB window, by ntc_mr_buf_map_dma(..).
>
> The doubt that I have is that is it necessary to have the dma_addr from step 1 to be within the limits of NTB window, in this case MW[0] ?
> And if so, is there some specific configuration that needs to be made?

The dma addresses of the memory needs to fall within the translation
range of the window.  If the memory is not within the window, then the
peer will not be able to access it.  There is no bounce buffer for
memory not in the range.

Step 2 is to communicate the offset in the memory window to the peer,
which is the same as the dma address because the translation range is
zero-based.  Then the peer will access the memory directly.

>
> Also, is above configuration of MWs correct?
>
> Thanks in advance.

Welcome,
Allen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJ80sav6-3OEYp3wTUQ-nc541-Zzb3dNCxnXaLY4x7AjLn%3Dtug%40mail.gmail.com.

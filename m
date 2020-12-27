Return-Path: <linux-ntb+bncBC3ZPIWN3EFBBAEPUP7QKGQEWKRZE5Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CEA2E3236
	for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 18:42:24 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id g16sf5358796wrv.1
        for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 09:42:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609090944; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7nD9M7zCrE4DUMERUoZ25wrlVFzQDhSrBbKF703bLU82axiyTOu73ar7Uv1G/P90m
         AImaOB8+Tr9rZe7Of0bup9sCugseswAWWORxDNCz4juiqx542jpgJUdERmk1vflXj4g8
         5j6N4m2kBfHQ5gawsuMOOt07SMP21IDW4ySHUmhY1tj9PGqZ+pmCDY4TfSOo2cjdEuwk
         qkL5O8qtOrosjSYYbDMi40U02b16AYeUZ/KSsMD8lH1xhSY3y8s6vJK4fewUq5sf1xFP
         vm8uoFpWU23gPHKZRvTB/jTX6//pHDhwY80p6vlMMMAK8wcEUs70RQT5QGFssyhABtgx
         +vUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=C9Yex77frfyum8aYUXok7JbPxLtG1xsLSmP3+WBc2eE=;
        b=cjVkYau7qxjm+q1QELNKhEr2ht6z+X6Vt3YMOJM2KnqnF0K5amafR3jzH3rEddUY+k
         3KEFTTHf7NZOnd1hdl/8im1kYSmOyIctpgNQC/aHN3isV9bZgx3+R9y6gPNtjudUU6JX
         6thIMilZkXQyC4PVx1A6grURClp3WJAeJnZ5cBzEJTEUIJ3DztcbOjuHjIEd2La8qe5T
         6PKZa5kb+aou5C+wybYFF1n1tVuT8Evvtj4dgpJ3P9Tm9btQLptTaXJTGR8sSOpMWHbs
         DC21TpH3fu4DYCmggR4i0a+d1HR/9ZMP2nHmaqUyAwYVx1IyjW0cisfJBO5Dh/DmOmPV
         XP1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gOMY+9UC;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C9Yex77frfyum8aYUXok7JbPxLtG1xsLSmP3+WBc2eE=;
        b=ELptwo+jEg7QmcThThnfAyFc+f2N7t+gTDD6aCkbVUh/L7W7LsKQ5TkyFx+88BaTGx
         plP87SvV4Mvlw1SJWZMsmUoOqCVLTu8aHoLrCxhWft1Bj+/kcZ2lakjNw16p+TLJxOLS
         BBm52RLBUWN3JLuRY/DH8vMxaiGWEh5aANQNXphqZIEbR2EvOeISQWq8C/JMD+CFoygt
         mEyrpmHGxbTSnpMCk6OV2KfOqpd7eA0aBduWgRFtQqANmYoC6lkDqDvP/dESnQ31VsQ+
         EJj9AkMIy9iKv8GrJ47MllgoYkYro+sZ05iQM1PZD3U8Yj/CR8nALffN+4Sxb2hJTARB
         g1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C9Yex77frfyum8aYUXok7JbPxLtG1xsLSmP3+WBc2eE=;
        b=MstP1n20IRQo31fsDr2RHMNcvB/yvHHOzdP+jcKZb5LGMmWjmTtbx1NT+6yL+wTcfK
         kR6Z+uiwAnbq5nQT0OQBF5GP3JQiAdr569LquiZo8RJYp2TSntbS5j3ZZTH4W3g4MnWF
         2yCa8XvDCGPv/8Mi3U0ZtEUTVN3Xm7dti8yiE4v8AkAlZgATizyjunJ17+A/Humqj4xa
         orxXcsM7zMFTnHwtCOeq5QSx6e/PAyPygVP3NvVjJCrOk4Wf/gFBvc2lfWyDvGbhQpcu
         vB1IlBcW9VQgULSQnSxFZrP1ckcE8hen5nHfEnMc+kXPRMerwXNADVIri8fu85SBBLvJ
         NlLQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531hm/rs4Br5x0jqD7qu9hyI6BxfDBD22G9E2vZYdw5j1Jf2SKsY
	xNBfE7O1lFzqYRsD1lf/I+A=
X-Google-Smtp-Source: ABdhPJwb+354v1Y3QbQsNUZnuwGlBGHyR5cEzDa/IY03mN97DryWV2rvN8hzf41QBBN/KgjgbC5Hcw==
X-Received: by 2002:a5d:6751:: with SMTP id l17mr47152976wrw.73.1609090944666;
        Sun, 27 Dec 2020 09:42:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls20161229wrw.3.gmail; Sun, 27 Dec
 2020 09:42:23 -0800 (PST)
X-Received: by 2002:adf:ef06:: with SMTP id e6mr46802934wro.231.1609090943843;
        Sun, 27 Dec 2020 09:42:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609090943; cv=none;
        d=google.com; s=arc-20160816;
        b=YeHVzfxpCa7Gc5/GWtVc1p5/1BwXQnvUmEwWdpwyScVf0GYx+vyHIkTMLKK4W1C5pU
         1AVyPA2Q+I1yAr6/0lZMKJyXudpRtdmJBRfPYuxoYiAxh3il2uMXCVP+ju8/ADItoUZB
         PekrxxgDgnx748oqdoMtba1LWhEvTq6ysA5DYak+v3zU2TASDDrjbkzB5zyKqp2mf6N/
         PzfHwi5uT0TJfTCq6ARVql9Py8XNyz63UXwbTaFncuXTtpbsc9Mcow4vlGxlogadktXd
         RttiB8dA6CFBO8EXtxefYnDy8ytpuXBUzmsLN21Tisi8PiGzYhBw0RZaw3ZAqwoo6Um7
         XHng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p9PMQ/TAeRGjobkyaAFCUk6MKMTfvyJDIgZG9GbnId0=;
        b=IJIeeXH6tmIIHJDocqRDogJ+SrqMu67p3Ag6NOSopbp4qaJf3HC6hKxqO7YhigoXVF
         Nit1xdSL+FtMNIi+WFc3dJF+vvvOjZc9de24FuPGweXDvfW9GQYg9BLVUNGS5kg2t64d
         2ReGYvGC9IPZVE6JSEOk1l6Ws7Y801bMI+/zG1ve61loAORZaUsfQBgqXOtM+RB2idRy
         NHP+GGiMq5QrHXvZjRUA0GmoFH4HTpRVo1pI/wz9YSxmF502ktujnQBXILeEiQ/6Zn5y
         0jiZWFHh+lVveIrRw97QQMM6wPPspkPcpK/MyS/69aoyMVEu5Pls6mUqWG7wRbxQ7EBc
         +Lqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gOMY+9UC;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id v16si388836wmh.1.2020.12.27.09.42.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Dec 2020 09:42:23 -0800 (PST)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id o17so19378414lfg.4
        for <linux-ntb@googlegroups.com>; Sun, 27 Dec 2020 09:42:23 -0800 (PST)
X-Received: by 2002:a19:8983:: with SMTP id l125mr17269016lfd.182.1609090943258;
        Sun, 27 Dec 2020 09:42:23 -0800 (PST)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id m21sm5973816ljb.108.2020.12.27.09.42.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Dec 2020 09:42:22 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id o19so19429655lfo.1
        for <linux-ntb@googlegroups.com>; Sun, 27 Dec 2020 09:42:22 -0800 (PST)
X-Received: by 2002:a19:7d85:: with SMTP id y127mr18449847lfc.253.1609090942043;
 Sun, 27 Dec 2020 09:42:22 -0800 (PST)
MIME-Version: 1.0
References: <20201227141638.GA11393@athena.kudzu.us> <CAHk-=wjxQzF3eWank1r7F6+EqSRsO+kvibPqDbzxjHv3wzZt0A@mail.gmail.com>
In-Reply-To: <CAHk-=wjxQzF3eWank1r7F6+EqSRsO+kvibPqDbzxjHv3wzZt0A@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 27 Dec 2020 09:42:06 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgdcA-gADjaqp5KZChRjwKGStOo_MVEu3MSi7HiRDGS9g@mail.gmail.com>
Message-ID: <CAHk-=wgdcA-gADjaqp5KZChRjwKGStOo_MVEu3MSi7HiRDGS9g@mail.gmail.com>
Subject: Re: [GIT PULL] NTB bug fixes for v5.11
To: Jon Mason <jdmason@kudzu.us>, Dan Carpenter <dan.carpenter@oracle.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-ntb@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=gOMY+9UC;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sun, Dec 27, 2020 at 9:38 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> The thing is, "PTR_ERR()" works just fine on a IS_ERR_OR_NULL pointer.
> It doesn't work on a _regular_ non-NULL and non-ERR pointer, and will
> return random garbage for those. But if you've tested for
> IS_ERR_OR_NULL(), then a regular PTR_ERR() is already fine.

Side note: no, standard C does not guarantee that a NULL pointer would
cast to the integer 0 (despite a cast of the constant 0 turning into
NULL), but the kernel very much does. And our ERR_PTR() games in
particular already violate all the standard C rules, and we very much
depend on the pointer bit patterns to begin with.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHk-%3DwgdcA-gADjaqp5KZChRjwKGStOo_MVEu3MSi7HiRDGS9g%40mail.gmail.com.

Return-Path: <linux-ntb+bncBC3ZPIWN3EFBBIUNUP7QKGQESEIS7IY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF652E3234
	for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 18:38:42 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id a10sf5816153lfg.13
        for <lists+linux-ntb@lfdr.de>; Sun, 27 Dec 2020 09:38:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609090722; cv=pass;
        d=google.com; s=arc-20160816;
        b=u0A17BiPz7dGEnEwfN/VyAA+SS6UsQo5zDeH68bp2WrhoRsfb2Y+cp/cBaqf06bS5k
         vMFivuMQ8P6jwlNea/dRf0OiP0Ar3/y5u52WTCRr95x4Dj+3kAiA31kDKNLrJtlwyQjS
         a+qMQwQrjOyJNCEIfAULcVDGE3fn15D1TQEf7/g0Dw6Pu6iuDm8eD/biFwFns1MeCsv2
         0PQ6AxQC4iMngYHqFDfW60QjHbF/XKoQQnf3rXhxlO827Ga3uNb2WA2a1nSMJvz8EG/g
         ixYEG11gqcC7CRQAGxN1XjWKFxjdo0H8ZaJnEKTEyzGbGGgm8lQft2HJ6+fLtjNHCdjR
         cR3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=U0oqCaGVUZoam55lgDl4GlD91VsT5RHKEuNy+kF0x8g=;
        b=XkljPdAOdM1A+9BwS7vkIejCw2znwdISqOFUHwES0Bv6EeL2Q3OeQJFGWiLgg/Ogh9
         GNYpAlB2UeRflgX5vaW9+9kZ1+GAHyAYaRQ1SMXmtDUQy+GIypURvLFaoJ5wk4x9KKXx
         Wc0aSZbcS/36OYqdTQgKRZL2imshZURAaiskt4v/G2/xvgxXO1dpTsXbBlz1LijqY+CS
         qKsA4HUNG28SDs6MxrMPDtzU36G2e4uw74EZkHJuR18BMNsySiRp6XxMSumn2e2frqHH
         3fG7ZKzeTpn5BQF58JAOiyeYRC3ZJfT/aKQwcNDTyj12rTEn6uUNFCXwCQiNsbOnc93s
         anfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=AH2S4rTN;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U0oqCaGVUZoam55lgDl4GlD91VsT5RHKEuNy+kF0x8g=;
        b=ZRSSoijl11fyQ51URPQBu41q56X8gNqDXNFBE7JvVNdzbCSbWhZExLeKyxted4x7/4
         NgM6tkyhTNKJkdvpgu6V7WO5TdEeu913Rnt0gBRS0VMC4up8fi4pU0hXWt0x4ipAi6wb
         bw0UF23Ys8ofCPRjuo2J+T3/yKvyltsBovr9ve9+aII89Y0lROMC3lq/8zjZdWdB+PBp
         3AQ52zw1qFYQ4ZW/aWnpkavhpbpm5JAEtaRJePRlvkATxKH7OuY6Fi0nyA6VIkr39pra
         90nJU9M2Fs3+PJVtpgvyE0KRBmc/C7V6ddUOaVtWU3swGdtJZ451aXj1TJQU5Y259aY9
         3sQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U0oqCaGVUZoam55lgDl4GlD91VsT5RHKEuNy+kF0x8g=;
        b=CSYFeQKAeeR4Wm8YDMXr2UCQqwPp4xwTyY+yaWwssaYxGiLfChkY3nB7uoGtuP7hF2
         32VhfZvu/FVJlVn/hSsENm1z0INQ7VoIfLnl+y1UBSvH8d4ar3T5WxFkYNS/Oj8qborV
         ovQrUrNxMIVHXrQ7vuVL7Vytp/VBqhw8lK+/jKVmgCz49BrcMS0hb0wib4+lRvaknOVM
         71e8/awSKLD3bIyQvqDDiSFkAexDCz12GO9PXGGxnBncz+C9w/4vrjewSHit9EkELPv1
         JjH7ygiXGlegIdgtFpdAvNL9eh4CqwVckoE6ATbWZgTKzFra0/9rQzR9iOyKnEL994OY
         3jqQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5319dHs9ap+MsuncADotO7SM7FG3JbU6weOfZFD94rh7PBZ7Vd+w
	WVM8sPWyavll/7mBr6RLpvA=
X-Google-Smtp-Source: ABdhPJzUarB9SXfykOq/wV+lbFHwRbRU4I3KKJVQ5xZ5C/3KlBSNYALslqRUufjx/DZSw1mUSvGkfg==
X-Received: by 2002:a2e:86d1:: with SMTP id n17mr19149877ljj.120.1609090722413;
        Sun, 27 Dec 2020 09:38:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:3001:: with SMTP id w1ls8215594ljw.3.gmail; Sun, 27 Dec
 2020 09:38:41 -0800 (PST)
X-Received: by 2002:a05:651c:1398:: with SMTP id k24mr21425878ljb.30.1609090721297;
        Sun, 27 Dec 2020 09:38:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609090721; cv=none;
        d=google.com; s=arc-20160816;
        b=jcdvVyzj675H9V2yAx6C4qcx5YPI8VQP6nLBVrt4ExRfV+5Q2Qy+zDEJ9UFp6/V63Y
         i1IDSTyut1hZZnyRHhwgoQdjH5QlYY3MCCNWt40B1EwBYw9afJ1y4/4xpsU0p5JxMIHu
         AmPNiC+x5bQnOTo624kBCEvNGjRI9LD8IuOYdH3T/X3C1J/00WMmw1GbaQRcUoqQFkXA
         95oNp4SNHqRkQRvvL5hHWsSZLiPmKaBLwR7c6rtIhPyPN4Niw5xzJ0g1DgPGE08wr3RI
         OjZLO7hZXVbMIYqxaRVf4auZjNNLHOlR34uSjkxv+BCetDVXPicON/euaQzQMfkQJHtV
         nFUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CuN4T+GUGL/ZU+phVVPp/K4I5WBfD11Fdwa/PYomUhw=;
        b=mEFNn+1qJxeyPsf3PF7yu9U4sjG6iBWARi069ptRJV4l5cNRK+SkzuhxyPGi2ZsRFj
         PLC73/Y6rJtOXsIRaegb8NPmSDD6GE1NFLaicy+6uQzHD/3N6dZUnrVLk6JjHqoy58Ob
         oZHEIpuyke6ZkO0xcre5zuxFAAsWsav5SY/R513xiL7da1+sftrZ9E11IA7Jq94xHBI4
         9Md3nCIY4QkemQcolLUrXwbpqRMud3wgBR8I6jpb0wPi3uJpvpWs1/K6Cf4y0TPP+ACS
         j+HC4yeiVIt0lNIhmm29B0bSAcHyo4zqMD1ZjS+tnJE2BigWwQLcrepIhTZKijUY41U1
         DD1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=AH2S4rTN;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id u25si985985lfd.11.2020.12.27.09.38.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Dec 2020 09:38:41 -0800 (PST)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id h22so19415083lfu.2
        for <linux-ntb@googlegroups.com>; Sun, 27 Dec 2020 09:38:41 -0800 (PST)
X-Received: by 2002:ac2:5294:: with SMTP id q20mr5590664lfm.251.1609090720736;
        Sun, 27 Dec 2020 09:38:40 -0800 (PST)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id v28sm5044735lfd.57.2020.12.27.09.38.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Dec 2020 09:38:40 -0800 (PST)
Received: by mail-lf1-f54.google.com with SMTP id o13so19375690lfr.3
        for <linux-ntb@googlegroups.com>; Sun, 27 Dec 2020 09:38:39 -0800 (PST)
X-Received: by 2002:a2e:b4af:: with SMTP id q15mr19471517ljm.507.1609090719546;
 Sun, 27 Dec 2020 09:38:39 -0800 (PST)
MIME-Version: 1.0
References: <20201227141638.GA11393@athena.kudzu.us>
In-Reply-To: <20201227141638.GA11393@athena.kudzu.us>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 27 Dec 2020 09:38:23 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjxQzF3eWank1r7F6+EqSRsO+kvibPqDbzxjHv3wzZt0A@mail.gmail.com>
Message-ID: <CAHk-=wjxQzF3eWank1r7F6+EqSRsO+kvibPqDbzxjHv3wzZt0A@mail.gmail.com>
Subject: Re: [GIT PULL] NTB bug fixes for v5.11
To: Jon Mason <jdmason@kudzu.us>, Dan Carpenter <dan.carpenter@oracle.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-ntb@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=AH2S4rTN;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sun, Dec 27, 2020 at 6:16 AM Jon Mason <jdmason@kudzu.us> wrote:
>
> Wang Qing (1):
>       ntb: idt: fix error check in ntb_hw_idt.c

So this patch seems to be at least partially triggered by a smatch
warning that is a bit questionable.

This part:

     if (IS_ERR_OR_NULL(dbgfs_topdir)) {
         dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
-        return PTR_ERR(dbgfs_topdir);
+        return PTR_ERR_OR_ZERO(dbgfs_topdir);
     }

works, but is very non-optimal and unnecessary.

The thing is, "PTR_ERR()" works just fine on a IS_ERR_OR_NULL pointer.
It doesn't work on a _regular_ non-NULL and non-ERR pointer, and will
return random garbage for those. But if you've tested for
IS_ERR_OR_NULL(), then a regular PTR_ERR() is already fine.

And PTR_ERR_OR_ZERO() potentially generates an extraneous pointless
tests against zero (to check for the ERR case).

A compiler may be able to notice that the PTR_ERR_OR_ZERO() is
unnecessary and remove it (because of the IS_ERR_OR_NULL() checks),
but in general we should assume compilers are "not stupid" rather than
"really smart".

So while this patch isn't _wrong_, and I've already pulled it, the
fact that apparently some smatch test triggers these pointless and
potentially expensive patches is not a good idea.

I'm not sure what the smatch tests should be (NULL turns to 0, which
may be confusing), but I'm cc'ing Dan in case he has ideas.

              Linus

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHk-%3DwjxQzF3eWank1r7F6%2BEqSRsO%2BkvibPqDbzxjHv3wzZt0A%40mail.gmail.com.

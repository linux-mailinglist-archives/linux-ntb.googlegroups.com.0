Return-Path: <linux-ntb+bncBAABBKUQ36EQMGQEVYJFHUA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C0B402F76
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Sep 2021 22:14:36 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id w21-20020a4ae9f5000000b0029116e62638sf5576ooc.4
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Sep 2021 13:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631045675; cv=pass;
        d=google.com; s=arc-20160816;
        b=DCFKcUnRCrnC4R6sHx4qUR6AZlh+M7G8NMBAYPE4D9+vBHAmdernmG4M7HPjqL9v2e
         Dp6Vr6yObBSbOVO6dxKkhaM00R8WFepV8Z+WiHaLP+zNzyqUlyaVfvctTo6uA3VlQQSA
         pnZNm1BdUe5Tps8EZpnxYa6XlTIVhqaL0dunM2d3nZ5bFWX4Jcgk5KLk/sUingcN5SCp
         YKSnHlzKcH8mJqncdSsA67Zjr5M0lyJvnYw5fvawiZ4Mol/YENrklj5hrs4Fg9FREHwd
         U3/LOd/VFbL3jizEaBYppyz+g+ktPXM7DvLvGbXKaz5h+eQF/wCLUZ1Z90IIjF2FSPz3
         pVKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=xXlRHR44/Q3E2nw3Rm4LVL0f2R6jFpk4OBTOIBK25wQ=;
        b=lPVAHpLlE3KL/4SVbNjf34osPfMcQr+1ntx10TSTkGB4bJmryv76jKfjEwPJman9bI
         hNyK8BfbxPGAeF1LgIFW175tWLw9+kTBQrJRZhR53kvPbJ5RZ4M6ODjwozzj2KWk580b
         nIoA3cWrRKVUtBznNGyv6myi9cWKqZJkF8HGoFlECfJaH8L3xG8dhA8WMIry/BqYPHyz
         u/M/tNoQGCbHeCjkJjLAT0gybXobkZhQ/v+5GUS2Ti+wC96m360uFeMb3m5eWDiT9Nrq
         p0Sssi9JUQziOOe6yw7CaV9HmCTjYB+Z0agoqIXKUq7dOuV0E4mJJlWSbYlaA1/4m9cN
         aUQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=baABJ2ER;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xXlRHR44/Q3E2nw3Rm4LVL0f2R6jFpk4OBTOIBK25wQ=;
        b=hvUU9+L8KnrJysj+bpvPgdYf5b+jBErtOGOihPW5K0GNfb3F4oONipqXZLe6DQIuBw
         IZ6pT6nnO8B0bW4vQRQpKoJe6hM7I8IKAID2amgKgHzmd65JjbWjN1bD1EvwqseBUaBq
         aRC7yRxNxCpIZsGT4L0Kqyh5fHbDr0/7PvO1s1MXlZSxOseWSa2jkHiP892XuQWoHOdE
         ttnbehLlGRbQ0gNqWM5Kxa5+QstxsK4/1ZNd21zI4duU8g/PcX7TiUZg20uV1EOZxGK4
         VWuqtW80PMOdy6y/oGkwEVNVrVjCdwDbI/12Em7s/coPlQ3YiHuWTlL/WkDJFdc69YKS
         yU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xXlRHR44/Q3E2nw3Rm4LVL0f2R6jFpk4OBTOIBK25wQ=;
        b=Jfb4bcAb+jQwH4eQCX/ckx1ZM0EZdRQ4oiBjtNYll+q06xkPDPX5+COUyjAJYY4TDG
         XHsEGeRfdLOlK3nXKynxUHLi4+0CicaxZ1iW3lzKZfR8nJr7ujM/NM6c40yXOWL5ovxV
         6ssCrRYScrKM2wJhePhUuej0doqcZJ4vmtpmFy+TCt8dKLMJtdxCwIAL1eOyGm0uOd+9
         TkHpdf6gmrY1N65Z/q9KL5agD2zX0Vovq7yPf/2NU0Y2d0o3DX/D0YtMRzec7/ehbI23
         c32bq8/GkDPj8wA9sm7lEYRilWctvBcUr0qc/U0GuUgQ71knn7rCqPlTswhB0TmXQeUM
         3iTA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530EqPpdbBpe+opEvtYtB6NV47rUztOcXg/WZqtcWkj+6C0hXeaz
	GvnyEyve+Zff8KKG+n/V73g=
X-Google-Smtp-Source: ABdhPJw4vcg+gDq+NLY8R9v/81S5pscC4k3ECZ7zvwDddq2b7mbOI+iWHiyC7tgiivDefb1WeJ7q6Q==
X-Received: by 2002:a05:6808:199b:: with SMTP id bj27mr4338636oib.129.1631045674721;
        Tue, 07 Sep 2021 13:14:34 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:62c9:: with SMTP id z9ls2848870otk.6.gmail; Tue, 07 Sep
 2021 13:14:34 -0700 (PDT)
X-Received: by 2002:a9d:3a6:: with SMTP id f35mr175004otf.144.1631045674396;
        Tue, 07 Sep 2021 13:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631045674; cv=none;
        d=google.com; s=arc-20160816;
        b=j2JHCkZKjQnJgTpPVh4eUx40VwazQtEWFH0iQe1IXWDJLwl9XWU6DBwOLLkMTkMuDR
         //vryu0CrfNeca0DsQO8eAI7Y3PiUNwiMjW6SUPsZHIx5OSNJHwn1rPVNtc/+xWZC+F/
         SSMEAHzgt7x4PqopylddHLhYHQGTwybcR0jMpEVdpyGz9x5HK4P6b7L+kLsNjujaJ0b3
         7l8+Hj9rjEGIlfcErwAoYvFL3GscBbckWUhE9CctBUHpI3K+0gaXaQ4EhUw8XEoskqPA
         0w9LfABD7l6OTPcTFnKHA8zQUSa6rM5iX3r7IFNlVGDDKleyCT+2KXwSESGdzXk0f0Ca
         yowg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:subject
         :dkim-signature;
        bh=nwrOWWh5cPvdAO93X1ziFOP4G4lPG7o8j6Pt42+NdrM=;
        b=OHKFecN/0lzXs+vsro19MMtjlQeusVW2DC1cebVzkKz1uhuaKfbmoaVlgmamFN0MN9
         aAkVLDDces7gr8CYUNwvOimMbC+H1CWqkAQeNVBta/ZaZGJRidyPcbj9CyQbkyQq1bCB
         wTO9eQ/BniuR04oYmJj7CkElXpgDEQ677kitoxjjqBhqmLP7yJrT2jYaVx8MPPuCiZAx
         Yf230zaBqC/BpHysjXsnhNM8Ay53odpE/bfnxEWHthsHly+6LxGk2aAYgfd+7oGyZS5M
         SLubompiLrgp5paVaBwwFiOdQTa5BX/zQKQo+LjadIdr6JJckvXr63gzTjHfAAmjnJpg
         3ITA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=baABJ2ER;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a9si10172oiw.5.2021.09.07.13.14.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Sep 2021 13:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 997F561100;
	Tue,  7 Sep 2021 20:14:33 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 93D0F609F5;
	Tue,  7 Sep 2021 20:14:33 +0000 (UTC)
Subject: Re: [GIT PULL] NTB bug fixes for v5.15
From: pr-tracker-bot@kernel.org
In-Reply-To: <20210906180209.GA14486@athena.kudzu.us>
References: <20210906180209.GA14486@athena.kudzu.us>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20210906180209.GA14486@athena.kudzu.us>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.15
X-PR-Tracked-Commit-Id: 38de3afffb7257176978dfa9b3ab67d0c29af95c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1735715e0fd7a16972402ac98197e6cf30988a45
Message-Id: <163104567359.21240.10721410239847224990.pr-tracker-bot@kernel.org>
Date: Tue, 07 Sep 2021 20:14:33 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=baABJ2ER;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

The pull request you sent on Mon, 6 Sep 2021 14:02:09 -0400:

> git://github.com/jonmason/ntb tags/ntb-5.15

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1735715e0fd7a16972402ac98197e6cf30988a45

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/163104567359.21240.10721410239847224990.pr-tracker-bot%40kernel.org.

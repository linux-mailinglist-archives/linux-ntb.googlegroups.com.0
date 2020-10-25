Return-Path: <linux-ntb+bncBAABB3EK276AKGQECP3OWZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB7629831C
	for <lists+linux-ntb@lfdr.de>; Sun, 25 Oct 2020 19:35:25 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id i129sf8739357ybc.11
        for <lists+linux-ntb@lfdr.de>; Sun, 25 Oct 2020 11:35:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603650924; cv=pass;
        d=google.com; s=arc-20160816;
        b=sIcHiN5mjRyEF3Bsr5L6oum/RJ7nlbFtR1odJ1CRE2bE1oq+tG8/zLx9ExFPQq+/Nz
         qB7rlWih2gRXSML1WN7U40iOmo8NUz2YTd1iXHNW2OcgZTHpZjzO9XbT/LLxXUDq2Wr/
         8WX9+on5UfoJGq4pdTqhSI4Ij8A5Wbh+bCOS7UmUMMUvj9K8QnvWqcn/ExPU3vNkYDZc
         vw9yJjW3PL5aUXwQLm5gyhc9H7JcRrnQa+uBYBST7AZEQah7H7PQKOhq/xifEWhf8cjb
         +tlH+mHfUnLsa/b0DVtqWsWDM8msAxEkOeEIJgiQj3YTmZkojP8OK5NTpqp9ga2WxaOi
         5jXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=LMha09S9Mdgg2tWOWZcLpCG/kcCZlZevgmrhzb8srz0=;
        b=DFs1lWG+byyk3qXPUWJclt/ijhIKTtveA8pP9AR+6Lx74YXhc3KIWPBxIEeLVV1X0B
         IBniqdKS0mYwyvNs1Lsn9yqjEP9Ru+e8uDVTzlepmZROrU0MPLd6McJo4tjKr4urJeso
         aZukIHATzZyX7Y7Y5Ip3lxFCuZgEZ4EagTz2NIdrUgyvxebE4CCQ6fuxqmrxhkAkK6Ew
         zlqXQ2soCtqvI6hxZsjf2/+ifjPBk4xSe5d0lNJA/ZGj148tQ72i6F9e1BdWZho+hd7J
         hWvDvCYYDpziXJTjigc70QQrmrVNrgNPIkykEo0rRGM9p1PVXTfDaljBcYQpJ2fUNmd4
         300g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o6EaqYXo;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMha09S9Mdgg2tWOWZcLpCG/kcCZlZevgmrhzb8srz0=;
        b=hVIvc6urWkETsC81aHcK+Wxd/E9aXfKEEc1xHoHc4jp8pj5aTWAHUPxpYwy9BHJoQH
         uc1UAiWJSklE+nFfGMJw3cAkBpg/4IPZ++GIxpw9iPAJfqjWaKMoy+e6PXPEt3/z0AJe
         3FZJax77lwtNN107/tgRpVnqwfA1f6eYpJTwvgWReNyy1xqTYstQOIid3JBN0aSGrcbW
         zaLQ+wR9JbiG/QE81V6lt6AwsdV7lklfoX5HRwdQzVj/cjYyLsyZgB99ut+Qilul4xHg
         daurHLhIJJmrZm6InXGD5KpNzJauTVh27JypsrodP4vedhKtFoGH+SJcPLaYKBaMwEAI
         Ks/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LMha09S9Mdgg2tWOWZcLpCG/kcCZlZevgmrhzb8srz0=;
        b=dDLyIudIp1gztDleI45pL5wKAbGLs6wCxO42+cX8vuzYLG0TjuFxgDMKhr9u6+nblJ
         tEWYTReY3Qg2SDzI5gapWWmairohyz8rd1QAW72PhykeJHyEFpVbjmfUZf7b2XDr07Zg
         /GH5lI9xVA+k8aybKQlgshRec7u/ZqRh4mxkq9xGqC1Bjw0IrbwQSMJl2OayhtXJEug0
         k7Y9/zkZixSUUgkFavk9aogPb3pn+lqThF8sP8pfe3Vlcp2xGAKHdJfBOkNPLoyclZL5
         +BbmepGRLuBYVB58CzHQniT2N5i5MqkwhwCvQeteNXhFGOpBkmWkjs5yJ0yxi06aKTm1
         aNAA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531JwzADzHP2HP9hLquFYzVuDWLdBt2j6js0RgcYJlFTcTkMDglL
	wY/lRYo9tpGFUM+BvWT1lpw=
X-Google-Smtp-Source: ABdhPJy3gqvRTOJIX1JzrXm3vOpl+l1Bxiasj6BS51OKBgEdlCoVfddWSzZO+7cY/gY5jyGl+TbkVw==
X-Received: by 2002:a25:d441:: with SMTP id m62mr16601992ybf.422.1603650924708;
        Sun, 25 Oct 2020 11:35:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2a0b:: with SMTP id q11ls3170181ybq.8.gmail; Sun, 25 Oct
 2020 11:35:24 -0700 (PDT)
X-Received: by 2002:a25:aa42:: with SMTP id s60mr17507471ybi.266.1603650924297;
        Sun, 25 Oct 2020 11:35:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603650924; cv=none;
        d=google.com; s=arc-20160816;
        b=OYgBzGJryZ4dG0eXxhupYG8Sn0z1KM8vlwi7ZUkq2GMEdY5a/GdTJ8bVMc/oFN77Hk
         4z6Z9i0HDrsE0zwrM4Na26wldPrXOZIQDbhVRbu3rAia3dmWzDEaULUhMBg9wQ4BvKT+
         Bq/kzwNEi+LBrYpyG4zE8JsLyRNIyv84guG/EAGHsNe5Wm4riyIBMwvTh/RlFo2VMKMZ
         RV8yAtDu7vs5HLtC6qtkuCV0entoWCSlBR5TWfumSf/znrorJEWiZTl8XLpYQYOnkGqM
         uFUDZLiRI9/Z6UkfqAfLsxwCYK2DkfBF3ZpuGy2GGeUtT9uWKHg89v+axysrW29AEPwI
         YjGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:dkim-signature
         :subject;
        bh=PfGk++blaQH7lVSx/a5n1pkfRE3yyiXRjno1SYJmTmg=;
        b=YjhMWSZuV3ld04p6Xk/+j4u5cPi2qxRkYrWL0GIq3cRcwoZBSHxqAFJquNxeLshjHm
         ktfuf8g6C15zjfj+z1C7T7CqBM4oylcbxqE6Gdl1FTx5LxgAyQWaNpb9QNKdFvvg1aTi
         bUGm5ZfMVAEzm9DafiXmFnxycU2XI+udPE/810WyUFqMDNDLlPmIlmIosbK2em5svZxZ
         nuiH1cDgzrBc8IY0X4CPO6E6GLDU2MNuQhCHBTiMKSB1JHlRkU0KesO2bDpHDreJ06lR
         yLfAOlHB7xP1TLxWDWfn+eZ1eEWxrat2WqoBxdWD2SxDl4HEplxEG72yiRV1nkd+oq/5
         Hnng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o6EaqYXo;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i188si384914yba.4.2020.10.25.11.35.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 11:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Subject: Re: [GIT PULL] NTB bug fixes for v5.10
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201025133637.GA7862@athena.kudzu.us>
References: <20201025133637.GA7862@athena.kudzu.us>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201025133637.GA7862@athena.kudzu.us>
X-PR-Tracked-Remote: git://github.com/jonmason/ntb tags/ntb-5.10
X-PR-Tracked-Commit-Id: b8e2c8bbdf7778c6e3c65db21ababb1dfa794282
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e5acf0ed8a5f0af084b0fdb53b0c7aad47dab29b
Message-Id: <160365092329.20889.3283622153980705366.pr-tracker-bot@kernel.org>
Date: Sun, 25 Oct 2020 18:35:23 +0000
To: Jon Mason <jdmason@kudzu.us>
Cc: torvalds@linux-foundation.org, linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=o6EaqYXo;       spf=pass
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

The pull request you sent on Sun, 25 Oct 2020 09:36:37 -0400:

> git://github.com/jonmason/ntb tags/ntb-5.10

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e5acf0ed8a5f0af084b0fdb53b0c7aad47dab29b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/160365092329.20889.3283622153980705366.pr-tracker-bot%40kernel.org.
